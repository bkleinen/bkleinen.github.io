#!/bin/bash
exit_on_error () {
  sshexit=$1
  if [ $sshexit -eq 0 ]; then
    echo "step ok"
  else
      echo "ERROR: step failed with exit code $sshexit"
      echo "ERROR: deployment failed"
      rm ~/.tmp
      exit $sshexit
  fi
}
eval $(ssh-agent -s)
ssh-add ~/.tmp
exit_on_error $?
ssh-add -L
rm ~/.tmp
date > ./hugo-tunnel/public-htw/timestamp
ssh -o StrictHostKeyChecking=no $HOST2 "mkdir -p /home/user/K/kleinen/public_html"
exit_on_error $?
scp -r -o StrictHostKeyChecking=no ./hugo-tunnel/public-htw/* $HOST2:/home/user/K/kleinen/public_html
exit_on_error $?
eval "$(ssh-agent -k)"
cp -r ./hugo-tunnel/public-htw/* ~/public_html
rm -rf ./hugo-tunnel/
rm steps.sh
