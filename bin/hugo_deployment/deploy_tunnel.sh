
  hugo  --source hugo --destination ../public-htw --environment htw

  ssh -o StrictHostKeyChecking=no $HOST1 "mkdir -p ~/hugo-tunnel"
  scp -r -o StrictHostKeyChecking=no  ./public-htw/* $HOST1:~/hugo-tunnel > /dev/null

  scp -r -o StrictHostKeyChecking=no  bin/hugo_deployment/steps.sh $HOST1:~/hugo-tunnel/steps.sh
  echo $WEBSSHKEY | ssh -o StrictHostKeyChecking=no $HOST1 'cat >>  ~/.tmp; chmod 600  ~/.tmp'
  ssh -o StrictHostKeyChecking=no $HOST1 "export set HOST2=$HOST2; . ~/hugo-tunnel/steps.sh" 2>&1
