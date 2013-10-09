#!/bin/bash
jekyll build --config _config.yml,_htwconfig.yml
scp -r _site_htw/* kleinenweb@uranus.f4.htw-berlin.de:/home/kleinen/public_html
