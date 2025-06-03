#!/bin/bash

Origin_file=356
file_system=220
compression_precent=60

New_size=$((Origin_file*compression_precent/100))

echo $New_size

if [ "$New_size" -gt "$file_system" ]; then
  echo "It is not enough! Make some more space"
else
  echo "It is ok!"
fi


# There has to be +10Gb just to make sure..

New_size_v2=$((New_size+10))
echo $New_size_v2

if [ "$New_size_v2" -gt "$file_system" ]; then
  echo "It is not enough! Make some more space"
else
  echo "It is ok!"
fi
