#!/usr/bin/env bash

# get filename and delete it
name=`basename "$PWD"`.ttl
echo "" > ../$name
# get headers and write to file
for file in *.headttl; do
  cat $file >> ../$name
done

# get body and write to file
for file in *.parttl; do
  cat $file >> ../$name
done
