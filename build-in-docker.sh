#!/bin/sh

set -ex

env

docker run --rm -v $PWD:/go/goStatic golang:alpine \
  sh -c \
    "cd /go/goStatic; sh build.sh; apk add upx; upx -9 dist/*"