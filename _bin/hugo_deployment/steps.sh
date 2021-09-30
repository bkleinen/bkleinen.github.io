#!/bin/bash
exit_on_error () {
  sshexit=$1
  if [ $sshexit -eq 0 ]; then
    echo "step ok"
  else
      echo "ERROR: step failed with exit code $sshexit"
      echo "ERROR: deployment failed"
      exit $sshexit
  fi
}
sed -e "s/-----BEGIN OPENSSH PRIVATE KEY-----/###BEGIN###\n/" \
    -e "s/-----END OPENSSH PRIVATE KEY-----/\n###END###/"  \
    -e "s/ //g" \
    -e "s/###BEGIN###/-----BEGIN OPENSSH PRIVATE KEY-----/" \
    -e "s/###END###/-----END OPENSSH PRIVATE KEY-----/"  \
     -e "s/.\{64\}/&\n/g" ./.tmp > .fixed
chmod 600 .fixed
eval $(ssh-agent -s)
ssh-add ~/.fixed
exit_on_error $?
ssh-add -L
rm ~/.tmp
rm ~/.fixed
date > ./hugo-tunnel/public-htw/timestamp
ssh -o StrictHostKeyChecking=no $HOST2 "mkdir -p /home/user/K/kleinen/public_html"
exit_on_error $?
scp -r -o StrictHostKeyChecking=no ./hugo-tunnel/public-htw/* $HOST2:/home/user/K/kleinen/public_html
exit_on_error $?
eval "$(ssh-agent -k)"
