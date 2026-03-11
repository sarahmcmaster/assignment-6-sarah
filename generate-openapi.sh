#!/bin/bash
set -e

npx tsoa spec-and-routes

if [ ! -f ./build/swagger.json ]; then
  echo "swagger.json was not generated"
  exit 1
fi

npx @openapitools/openapi-generator-cli generate -i ./build/swagger.json -o ./client -g typescript-fetch