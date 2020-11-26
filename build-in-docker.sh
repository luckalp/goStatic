#!/bin/sh

set -ex

docker run --rm -e VERSION="${VERSION:-unknown}" -v $PWD:/go/goStatic golang:alpine \
  sh -c \
    "cd /go/goStatic; sh build.sh; apk add upx; upx -9 dist/*"