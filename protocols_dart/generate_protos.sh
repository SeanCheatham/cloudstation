#!/bin/sh

rm -r ./tmp/protocols || true
rm -r ./lib/generated || true

mkdir -p ./tmp/protocols || true
cp -r ../protocols ./tmp

mkdir -p ./lib/generated || true
protoc \
    --include_imports \
    --descriptor_set_out=user-function.desc \
    --proto_path=./tmp/protocols/project \
    --dart_out=grpc:./lib/generated -Itmp/protocols/ \
    $(find tmp/protocols -iname "*.proto")

rm -r ./tmp || true