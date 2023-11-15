#!/bin/bash
set -x
propertyName=$1
propertyValues=$2
if [ -z $propertyValues ]; then echo "Validation failed: $propertyName is not present as a secret or configuration variable" && exit 1; fi