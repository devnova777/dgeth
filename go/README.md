## dgeth-golang

## usage

```shell
bash make-dist.sh
```


### bundling

```shell
dylibbundler -od -b -x  build/dgeth.dylib
* Collecting dependencies.....

* Checking output directory ./libs/
* Creating output directory ./libs/
    mkdir -p "./libs/"

* Processing build/dgeth.dylib
    chmod +w "build/dgeth.dylib"
  * Fixing dependencies on build/dgeth.dylib
    codesign --force --deep --preserve-metadata=entitlements,requirements,flags,runtime --sign - "build/dgeth.dylib"
```