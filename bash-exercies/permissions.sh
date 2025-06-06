#!/bin/bash

USER=mat
GROUP=DEV
FILE=/tmp/output.txt

if [[ -z $USER || -z $GROUP ]]; then
  echo 'USER and GROUP are empty'
  exit 11
fi

if [[ -f $FILE ]]; then
  echo "Changing permissions for FILE"
  chown $USER:$GROUP $FILE
  exit 1
elif [[ -d $FILE ]]; then
  echo "Changing permissions to Directory"
  chown -R $USER:$GROUP $FILE
  exit 1
else
  echo "$FILE is not proper file"
  exit 12
fi

exit 0
