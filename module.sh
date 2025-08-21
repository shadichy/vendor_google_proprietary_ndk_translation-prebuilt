#!/bin/bash

VERSION=13/R125-15853.53.0
VERSION_CODE=11865392

echo "VERSION=$VERSION" >>"$GITHUB_ENV"
echo "VERSION_CODE=$VERSION_CODE" >>"$GITHUB_ENV"

# Create a VERSION file for release action
echo "VERSION=$VERSION" >>VERSION
echo "VERSION_CODE=$VERSION_CODE" >>VERSION

mkdir -p module/system
cp ARM_TO_AMD_DBT_LICENSE.txt module/
rsync -av -l prebuilts/ module/system