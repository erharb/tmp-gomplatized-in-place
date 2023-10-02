#!/usr/bin/env bash
# This script is _destructive_! It runs gomplate to replace
# all contents of the current directory with the template output.

git stash store "$(git stash create)" -m "gomplate input data backup"

gomplate --verbose
rc="$?"
if [ $rc -ne 0 ]; then
    exit $rc
fi
