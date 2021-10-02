#!/bin/bash
wget -O commit-htw.txt https://home.htw-berlin.de/~kleinen/commit.txt
VERSION_HTW=$(cat commit-htw.txt)
VERSION_GIT=$(git log --pretty=format:'%h' -n 1)
if [ $VERSION_HTW == $VERSION_GIT ]; then
  echo "versions match"
  exit 0
else
  echo "versions don't match"
  exit 1
fi
