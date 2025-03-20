#!/bin/sh

# Fail on any error.
set -e

# Run npm-auth-to-token
echo "RUN: npm-auth-to-token -u $2 -p $3 -e $4 -r $5" >> $GITHUB_OUTPUT
sh -c "npm-auth-to-token -u $2 -p $3 -e $4 -r $5" >> $GITHUB_OUTPUT

# Publish package
echo "RUN: npm publish --registry $5 $1" >> $GITHUB_OUTPUT
sh -c "npm publish --registry $5 $1" >> $GITHUB_OUTPUT
