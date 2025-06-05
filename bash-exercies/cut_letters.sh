#!/bin/bash

FILEPATH=/tmp/data.csv
echo $FILEPATH

DIRONLY=${FILEPATH%/*}
echo $DIRONLY

FILEONLY=${FILEPATH##*/}
echo $FILEONLY
