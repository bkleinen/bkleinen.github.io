#!/bin/bash
# no longer needed, deployment is done via github action
function test_server {
  timeout --preserve-status 5 nc -z oxid01.rz.htw-berlin.de 22
}

echo "testing connectivity...."
if [ $(test_server > /dev/null ; echo $?) != 0 ]; then
  echo "could not reach HTW host "
  echo "(needs VPN connection!) - exiting."
  exit 1
else
  echo "ok."
fi

if [ $(git branch --show-current) != "main" ]; then
   echo "not on main branch - this will result in "
   echo "inconsistency between github and htw versions - exiting."
   exit 1
fi

git remote update
git status -uno
if [ $? -ne 0 ]; then
    echo "branch not up to date; need to pull first! exiting"
    exit $?
fi

<<<<<<< HEAD:bin/deploy-htw.sh
hugo  --source hugo --destination ../public-htw --environment htw
=======
git log --pretty=format:'%h' -n 1 > commit.txt
jekyll build --config _config.yml,_htwconfigrz.yml
cd hugo
git checkout hugo_migration
hugo -e htw --minify
cp -r publish  ../_site_htw_rz/hugo
cd ..
>>>>>>> a35ed90a (deploy):_bin/deploy-htw.sh

if [ $? -eq 0 ]; then
    scp -r public-htw/* oxid01.rz.htw-berlin.de:/home/user/K/kleinen/public_html
else
    echo "SITE BUILD FAILED, NOT COPYING TO HTW"
    exit $?
fi


# note: for the scp to work, there need to be ssh keys in place for kleinenweb
# and /home/kleinen/public_html and all files in it must belong to group kleinenweb
# and be writable for this group.
