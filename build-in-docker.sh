#!/bin/sh

set -ex

docker run --rm -it -v $PWD:/go/goStatic golang:alpine \
  sh -c \
    "cd /go/goStatic; sh build.sh; apk add upx; upx -9 dist/*"