#!/bin/bash

USER=mat
GROUP=DEV
FILE=/tmp/output.txt

if [[ -z $USER || -z $GROUP ]]; then
  echo '$USER and $GROUP are empty'
  exit 11
fi
