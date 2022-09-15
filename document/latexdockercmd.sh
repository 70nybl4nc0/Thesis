#!/bin/sh
IMAGE=docker.uclv.cu/blang/latex
exec docker run --rm -i --user="$(id -u):$(id -g)" --net=none -v "$PWD":/data "$IMAGE" "$@"