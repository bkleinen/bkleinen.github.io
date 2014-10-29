#!/bin/bash
git push origin master
if [ $? -ne 0 ]; then
    echo "push failed; exiting"
    exit $?
fi
jekyll build --config _config.yml,_htwconfig.yml
scp -r _site_htw/* kleinenweb@uranus.f4.htw-berlin.de:/home/kleinen/public_html

# note: to work, there need to be ssh keys in place for kleinenweb
# and /home/kleinen/public_html and all files belong it must belong to group kleinenweb
# and be writable for this group.