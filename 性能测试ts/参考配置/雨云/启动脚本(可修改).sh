#!/bin/bash

mkdir -p ./usr/dotnet
tar zxf ./dotnet-sdk-6.0.428-linux-x64.tar.gz -C ./usr/dotnet

export DOTNET_ROOT=./usr/dotnet
export PATH=./usr/dotnet:$PATH

export DOTNET_BUNDLE_EXTRACT_BASE_DIR=./usr/dotnet/bundle-extract
mkdir -p $DOTNET_BUNDLE_EXTRACT_BASE_DIR

while true; do
    ./TShock.Server -ip 0.0.0.0 -port 7777 -world ./原神.wld -lang 7
    echo "服务器已经关闭，5秒后重启..."
    sleep 5
done
