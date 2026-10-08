#!/bin/sh
# Regenerates the client from the OpenAPI document of the Go API (make openapi, no running server needed). Needs Java 11+ and Dart.
set -e
cd "$(dirname "$0")"
VERSION=7.25.0
SHA1=56a9bb79e3bb565f477eddca2c6daa288a9c6f35
JAR=.tool/openapi-generator-cli-$VERSION.jar
if [ ! -f "$JAR" ]; then
	mkdir -p .tool
	curl -fsSL -o "$JAR" "https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/$VERSION/openapi-generator-cli-$VERSION.jar"
	echo "$SHA1  $JAR" | shasum -c -
fi
node ../scripts/sync.mjs
# The dart generator mishandles four valid OpenAPI 3.1 forms, loosened in a private copy of the document:
# a boolean with enum [true] (z.literal(true)), an array of free-form objects and a default on an enum do not
# compile, and a required property typed [X, "null"] loses its nullability through allOf (LieuDetail.parent_id),
# so it becomes optional.
node -e '
const fs = require("fs");
const spec = JSON.parse(fs.readFileSync("../openapi.json", "utf8"));
const walk = (node) => {
	if (!node || typeof node !== "object") return;
	if (node.type === "boolean") delete node.enum;
	if (Array.isArray(node.enum)) delete node.default;
	if (node.type === "array" && node.items?.type === "object" && !node.items.properties) node.items = {};
	if (node.properties && node.required) node.required = node.required.filter((key) => !node.properties[key]?.type?.includes?.("null"));
	Object.values(node).forEach(walk);
};
walk(spec);
fs.writeFileSync(".tool/openapi.json", JSON.stringify(spec));'
rm -rf lib/api lib/model lib/auth
java -jar "$JAR" generate -g dart -i .tool/openapi.json -o . --additional-properties=pubName=sdk221
dart format lib/api lib/model lib/auth lib/api*.dart >/dev/null
