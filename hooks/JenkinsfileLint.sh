#!/usr/bin/env bash
set -eu

if [[ which docker && docker --version ]]; then
    docker run --rm -u "$(id -u):$(id -g)" -w=/tmp -v "$PWD":/tmp nvuillam/npm-groovy-lint "$@"
else
  echo "Docker is not installed or running"
  exit 1
fi
exit 0