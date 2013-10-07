#!/bin/bash
jekyll build --config _config.yml,_htwconfig.yml
scp -r _site_htw/* kleinen@uranus.f4.htw-berlin.de:~/public_html
