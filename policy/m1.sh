#!/bin/bash

# This script aims to test all policies
# The first parameter must be inner package source

echo "Tests of XSDK m1 policy ..."

PKGSOURCE=$1

# Verify package source
if [ ! -d "$PKGSOURCE" ]; then
    echo "Source directory isn't detected."
    return 1
fi

# m1 test 1: Check CMakeLists file existence
if [ ! -f "$PKGSOURCE/CMakeLists.txt" ]; then
    echo "Test 1 : Check CMakeLists.txt ... Failure"
    return 1
else
    echo "Test 1 : Check CMakeLists.txt ... Succes"
    return 0
fi

return 0