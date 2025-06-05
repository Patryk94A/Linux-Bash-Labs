#!/bin/bash

LIMIT=16
AVERAGE=10
PEAK=20
USED=15

[ $USED -lt $LIMIT ]
echo $?
[[ $USED -lt $LIMIT ]]
echo $?

[ $USED -ge $AVERAGE ]
echo $?

[[ $USED -ge $AVERAGE ]] 
echo $?

[ $LIMIT -gt $PEAK ]
echo $?

[[ $LIMIT -gt $PEAK ]]
echo $?

[[ $USED -lt $LIMIT && $USED -gt $AVERAGE ]]
echo $?


MEDIA=/media/cdrom
TMPLOC=/tmp
[ -d $MEDIA ]
echo $?

[ -f $TMPLOC ] 
echo $?

[ -d $TMPLOC ]
echo $?

[[ -z $NAME ]]
echo $?
if $? == 0; then
  echo "Napis jest pusty"
[[ -n $NAME ]]
echo $?
if $? == 0; then
  echo "Napis jest niepsuty"
NAME="Max"
[[ -z $NAME ]]
echo $?

[[ -n $NAME ]]
echo $?
