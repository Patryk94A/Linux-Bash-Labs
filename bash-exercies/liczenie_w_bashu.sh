#!/bin/bash

Origin_file=356
file_system=220
compression_precent=60

New_size=$((Origin_file*compression_precent/100))

echo $New_size

check= $(echo ($New_size>$file_system))

if $check ==1; do
  echo "It is not enough! Make some more space"
    else
  echo "It is enough, just do it!"
fi



