# Dotnet Core 2.0 and mono 5.4

Example project with multiple targets, including
 * dotnet standard 1.6
 * dotnet core 2.0
 * .net framework 4.6.2 which is actually provided by mono.

## Major changes

Now mono provides msbuild, which is working quite well.
 * it allows to build projects targeting multiple frameworks

## Build

Build for dotnet core and mono with

```
paket restore
msbuild /t:Restore
msbuild
```

Then outputs are
```
dotnet src/app/bin/Debug/netcoreapp2.0/app.dll
mono src/app/bin/Debug/net462/app.exe
```

You can build and test these demo apps with `./build.sh`
