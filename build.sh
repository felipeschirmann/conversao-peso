#!/bin/bash
DOTNET_VERSION=$1
APP_VERSION=$2

sed "s/<dotnet-version>/$DOTNET_VERSION/g" Dockerfile.template > Dockerfile
#docker build . -t convercao-peso:v$APP_VERSION --no-cache
docker build . -t convercao-peso:v$APP_VERSION

# for run image uncomment below
docker run -d -p 8083:80 convercao-peso:v$APP_VERSION
