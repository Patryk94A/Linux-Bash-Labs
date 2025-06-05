#!/bin/bash

date
hostname
who

du -sh /var/* 2>dev/null
sudo du -sh /var/* 2>/dev/null
exit 0
