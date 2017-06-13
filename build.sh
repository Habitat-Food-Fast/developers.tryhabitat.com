#!/bin/bash
rm -rf build; rm -rf build.zip; gulp; zip -r build build
