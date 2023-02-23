#!/usr/bin/env bash
set -eu
check=$(which docker)
if [ $check != "" ]; then
    docker run --rm -u "$(id -u):$(id -g)" -w=/tmp -v "$PWD":/tmp nvuillam/npm-groovy-lint "$@" --failon error --verbose
    exit 0
else
  echo "Docker is not installed or running"
  exit 1
fi