#!/bin/sh

set -ex

mkdir -p ./dist

VERSION=${VERSION:-unknown}

# CGO_ENABLED=0 GOARCH=amd64 GOOS=linux go build -ldflags="-s" -tags netgo -installsuffix netgo -o ./dist/goStatic-linux-amd64-${VERSION}
# CGO_ENABLED=0 GOARCH=arm GOARM=5 GOOS=linux go build -ldflags="-s" -tags netgo -installsuffix netgo -o ./dist/goStatic-linux-arm5-${VERSION}
# CGO_ENABLED=0 GOARCH=arm GOARM=6 GOOS=linux go build -ldflags="-s" -tags netgo -installsuffix netgo -o ./dist/goStatic-linux-arm6-${VERSION}
# CGO_ENABLED=0 GOARCH=arm GOARM=7 GOOS=linux go build -ldflags="-s" -tags netgo -installsuffix netgo -o ./dist/goStatic-linux-arm7-${VERSION}
# CGO_ENABLED=0 GOARCH=arm64 GOOS=linux go build -ldflags="-s" -tags netgo -installsuffix netgo -o ./dist/goStatic-linux-arm64-${VERSION}