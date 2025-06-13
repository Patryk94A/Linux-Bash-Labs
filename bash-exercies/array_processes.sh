#!/bin/bash

USERS=$(who | cut -d ' ' -f 1 | uniq)

for i in $USERS; do
  pswc=$(ps --no-headers -u $i | wc -l)
  echo $i - $pswc

done


