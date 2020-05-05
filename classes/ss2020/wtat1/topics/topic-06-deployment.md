---
title: Topic 06/Sprint 04 - Deployment
author: kleinen
layout: default
---

## Documentation

### Installing Heroku CLI

- Follow the Installation instructions for your Platform here: Heroku CLI: https://devcenter.heroku.com/articles/getting-started-with-nodejs

    heroku create

this automatically puts new new heroku remote into the git config, run

    cat .git/config

to confirm that.

### Create and Rename your Heroku app

Your app should be named according to your group name; please use this form: wtat1-group-x .

    heroku rename wtat1-module-handbook

### Preparing the Codebase

After setting up the heroku cli (command line interface), you can go straight to Preparing your Codebase for Heroku Deployment.

- Preparing a Codebase for Heroku Deployment: https://devcenter.heroku.com/articles/preparing-a-codebase-for-heroku-deployment

### Add a Procfile

    https://devcenter.heroku.com/articles/preparing-a-codebase-for-heroku-deployment#3-add-a-procfile


    echo "web: node main.js" > Procfile


    ~/l/wtat1/code/module-handbook (heroku)$ heroku rename wtat1-module-handbook
    Renaming fierce-waters-08413 to wtat1-module-handbook... done
    https://wtat1-module-handbook.herokuapp.com/ | https://git.heroku.com/wtat1-module-handbook.git
    Git remote heroku updated
     ▸    Don't forget to update git remotes for all other local checkouts of the app.
