eval $(ssh-agent -s)
ssh-add ~/.tmp
ssh-add -L
# rm ~/.tmp
date > ./hugo-tunnel/timestamp
ssh -o StrictHostKeyChecking=no $HOST2 "mkdir -p /home/user/K/kleinen/public_html"
scp -r -o StrictHostKeyChecking=no ./hugo-tunnel/* $HOST2:/home/user/K/kleinen/public_html
eval "$(ssh-agent -k)"
