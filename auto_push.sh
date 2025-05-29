#/bin/bash

# go to folder where i store all exercises or exit 1
cd /home/xdpo/home/xdpo/Github.com/linux-bash || exit 1

# Add all new files to git
git add .

# Commit with date stamp
git commit -m "Auto update: $(date '+%Y-%m-%d %H:%M:%S')" 2>/dev/null

git push
