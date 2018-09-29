#!/bin/bash

set -e

mono .paket/paket.bootstrapper.exe
mono .paket/paket.exe restore

msbuild /t:Restore
msbuild

dotnet src/app/bin/Debug/netcoreapp2.0/app.dll
mono src/app/bin/Debug/net462/app.exe
