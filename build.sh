#!/bin/bash

set -e

paket restore

msbuild /t:Restore
msbuild

dotnet src/app/bin/Debug/netcoreapp2.0/app.dll
mono src/app/bin/Debug/net462/app.exe
