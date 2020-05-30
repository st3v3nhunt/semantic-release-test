#!/usr/bin/env bash

TAG=$1
SHA=$2
echo "$TAG" "$SHA"
X=$(echo "$TAG" | cut -d. -f1)
Y=$(echo "$TAG" | cut -d. -f1,2)
echo "$X"
echo "$Y"
echo git push origin ":refs/tags/$Y"
echo git tag -f "$Y" "$SHA"
echo git push origin "$Y"
echo git push origin ":refs/tags/$X"
echo git tag -f "$X" "$SHA"
echo git push origin "$X"
