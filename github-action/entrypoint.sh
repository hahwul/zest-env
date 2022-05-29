#!/bin/sh -l

echo "$1" > /input.zst
out=$(/usr/bin/zest -script /input.zst)
echo "::set-output name=output::$out"