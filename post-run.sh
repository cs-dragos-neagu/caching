#!/bin/bash

set -e 

#Unlink the dependency directory if exists
if [ -L "build" ] 
then
  unlink build 
elif [ -L "target" ]
then
  unlink target
else 
  echo "There is no dependency symlink"
fi
