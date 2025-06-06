#!/bin/bash

WORKDIR=/tmp/workdir


#[ ! -d $WORKDIR ] && mkdir $WORKDIR
#[ -d $WORKDIR ] || mkdir $WORKDIR

[ -f /tmp/stop.txt ] && echo "we can't continue" && exit 1

