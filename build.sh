#!/usr/bin/env bash
set -o errexit #abort if any command fails
rm -rf build; rm -rf build.zip; gulp; zip -r build build
