eval $(ssh-agent -s)
ssh-add ~/.tmp
rm ~/.tmp
ssh -o StrictHostKeyChecking=no $HOST2 "mkdir /home/user/K/kleinen/public_html/hugo"
scp -r -o StrictHostKeyChecking=no ./hugo-tunnel/* $HOST2:/home/user/K/kleinen/public_html/hugo
eval "$(ssh-agent -k)"
