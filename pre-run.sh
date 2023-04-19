#!/bin/bash

set -e

#Check if the _temp directory exists
[ ! -d "../_temp" ] && mkdir ../_temp

#Check if the build or target directory exists and create the symlinks
if [ -d "../_temp/build" ] 
then
  ln -s ../_temp/build .
elif [ -d "../_temp/target" ]
then
  ln -s ../_temp/target .
else 
  echo "There is no dependency to initialize the symlink"
fi
