#!/bin/bash

USERNAME=''
RUN_ID='N'
RUN_LAST='N'
RUN_DU='N'

while [[ $# -gt 0 ]]; do
  case $1 in
    -i|--id)
      echo "id will be started"
      RUN_ID='Y'
      shift
      ;;
    -l|--last)
      echo "last will be started"
      RUN_LAST='Y'
      shift
      ;;
    -d|--du)
      echo "du will be started"
      RUN_DU='Y'
      ;;
    -h|--help)
      echo "USAGE: $0 [-i|--id] [-l|--last] [-d|--du] [-n|--name <user_name>]"
      exit 0
      ;;
    -n|--name)
      echo "Information about user $2 will be shown"
      USERNAME=$2
      shift
      shift
      ;;
    *)
      echo "Unknown option! Use $0 -h to display help"
      exit 1
      ;;
  esac
done

[[ -z $USERNAME ]] && echo "USER parameter is mandatory - use option -n or display help using -h" && exit 1

if [[ $RUN_ID == 'Y' ]]; then 
  echo "id $USERNAME"
  id $USERNAME
fi

if [[ $RUN_LAST == 'Y' ]]; then
  echo "last $USERNAME"
  last $USERNAME
fi

if [[ $RUN_DU == 'Y' ]]; then
  echo "du -sh /home/$USERNAME"
  du -sh /home/$USERNAME
fi

exit 0
