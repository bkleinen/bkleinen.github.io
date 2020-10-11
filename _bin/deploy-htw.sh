#!/bin/bash

function test_server {
  timeout --preserve-status 5 nc -z oxid01.rz.htw-berlin.de 22
}

echo "testing connectivity...."
if [ $(test_server > /dev/null ; echo $?) != "0" ]; then
  echo "could not reach HTW host "
  echo "(needs VPN connection!) - exiting."
  exit 1
else
  echo "ok."
fi

if [ $(git branch --show-current) != "master" ]; then
   echo "not on master branch - this will result in "
   echo "inconsistency between github and htw versions - exiting."
   exit 1
fi

git push origin master
if [ $? -ne 0 ]; then
    echo "push failed; exiting"
    exit $?
fi

git log --pretty=format:'%h' -n 1 > commit.txt
jekyll build --config _config.yml,_htwconfigrz.yml

if [ $? -eq 0 ]; then
# locale charmap on server says US-ASCII, so not necessary for this server
#    for f in $(find _site_htw_rz -name "*.html"); do iconv -f utf-8 -t ISO-8859-1 $f > temp.html && mv -f temp.html $f; done
    scp -r _site_htw_rz/* oxid01.rz.htw-berlin.de:/home/user/K/kleinen/public_html
else
    echo "SITE BUILD FAILED, NOT COPYING TO HTW"
    exit $?
fi

# if iconv fails, or gsub in HTMLProofer fails, check for invalid UTF-8
# with grep -axv '.*' *

# note: for the scp to work, there need to be ssh keys in place for kleinenweb
# and /home/kleinen/public_html and all files in it must belong to group kleinenweb
# and be writable for this group.
