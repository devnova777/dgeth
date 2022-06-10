#!/usr/bin/env bash
export CGO_ENABLED=0
export GO111MODULE=on
go build -buildmode c-shared -o build/dgeth.dylib \ 
    -ldflags "-w -extldflags \"-static\" -X \"main.version=0.1.0\"" 
    github.com/sambacha/dgeth/main