#!/bin/sh

# Fail on any error.
set -e

# Run npm-auth-to-token
sh -c "npm-auth-to-token -u $2 -p $3 -e $4 -r $5"

# Publish package
sh -c "npm publish --registry $5 --tag $6 $1"
