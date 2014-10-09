#!/bin/bash
git push origin master
if [ $? -ne 0 ]; then
    echo "push failed; exiting"
    exit $?
fi
jekyll build --config _config.yml,_htwconfig.yml
scp -r _site_htw/* kleinenweb@uranus.f4.htw-berlin.de:/home/kleinen/public_html
