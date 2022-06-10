#!/usr/bin/env bash
export CGO_ENABLED=0
export GO111MODULE=on
go build -buildmode c-shared -o build/dgeth.dylib -ldflags "-w -extldflags -static" github.com/sambacha/dgeth/main
go build -buildmode c-archive -o build/dgeth.a github.com/sambacha/dgeth/main
cp main/main.h build

# 	go build -buildmode c-shared -o build/dgeth.node github.com/sambacha/dgeth/go-napi 
# Path: go/build.sh
#go build -buildmode c-shared -o build/dgeth.dll -ldflags "-w -extldflags -static" github.com/sambacha/dgeth/main
#go build -buildmode c-shared -o build/dgeth.so -ldflags "-w -extldflags -static" github.com/sambacha/dgeth/main
#go build -buildmode c-shared -o build/dgeth.exe -ldflags "-w -extldflags -static" github.com/sambacha/dgeth/main
#go build -buildmode c-shared -o build/dgeth.app -ldflags "-w -extldflags -static" github.com/sambacha/dgeth/main
#go build -buildmode c-shared -o build/dgeth.app/Contents/MacOS/dgeth -ldflags "-w -extldflags -static" github.com/sambacha/dgeth/main
#go build -buildmode c-shared -o build/dgeth.app/Contents/MacOS/dgeth.exe -ldflags "-w -extldflags -static" github.com/sambacha/dgeth/main
#go build -buildmode c-shared -o build/dgeth.app/Contents/MacOS/dgeth.so -ldflags "-w -extldflags -static" github.com/sambacha/dgeth/main
#go build -buildmode c-shared -o build/dgeth.app/Contents/MacOS/dgeth.dylib -ldflags "-w -extldflags -static" github.com/sambacha/dgeth/main