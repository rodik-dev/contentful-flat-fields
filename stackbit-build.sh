#!/usr/bin/env bash

set -e
set -o pipefail
set -v

echo "stackbit-build.sh: start build"

# fetch data from CMS through stackbit-pull
npx @stackbit/stackbit-pull --stackbit-pull-api-url=https://rodik-stackbit.ngrok.io/pull/6036cd25510ab6a2c85a0b65

# build site
hugo

echo "stackbit-build.sh: finished build"
