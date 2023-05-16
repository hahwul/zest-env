#!/bin/sh -l

echo "$1" > /input.zst
args=""
if test -z "$2" 
then
      args=""
else
      args=" $2"
fi
out=$(/usr/bin/zest -script /input.zst$args)
echo "output=$out" >> $GITHUB_ENV