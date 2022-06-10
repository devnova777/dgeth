#!/usr/bin/env bash
export CGO_ENABLED=0
export GO111MODULE=on
rm -rf build/
go build -buildmode c-shared -o build/dgeth.dylib github.com/sambacha/dgeth/main
go build -buildmode c-archive -o build/dgeth.a github.com/sambacha/dgeth/main
cp main/main.h build