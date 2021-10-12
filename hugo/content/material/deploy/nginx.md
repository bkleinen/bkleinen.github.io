---
title: "Nginx"
date: 2021-10-08T21:33:12+02:00
draft: true
weight: 0
tools: ['nginx']
tags: ['web']
courses: ['networks','wt1']
---

## nginX


- Website: [https://nginx.org/](https://nginx.org/)
- Documentation: [https://nginx.org/en/docs/](https://nginx.org/en/docs/)
- Download: [nginx: download](https://nginx.org/en/download.html)
- Installation: [https://nginx.org/en/docs/install.html](https://nginx.org/en/docs/install.html)
    - Windows: [http://nginx.org/en/docs/windows.html](http://nginx.org/en/docs/windows.html)
    -
- Beginner's guide: [http://nginx.org/en/docs/beginners_guide.html](http://nginx.org/en/docs/beginners_guide.html)

ءBy default, the configuration file is named nginx.conf and placed in the
directory `/usr/local/nginx/conf`, `/etc/nginx`, or `/usr/local/etc/nginx`.

### Notes / MacOs

- installation with homebrew:

        brew install nginx

- start nginx

        nginx -s

- Where signal may be one of the following:

        stop — fast shutdown
        quit — graceful shutdown
        reload — reloading the configuration file
        reopen — reopening the log files


- put configuration under version control:

        cd /usr/local/etc/nginx
        git init
        git add .
        git commit -m "generated configuration"

brew install nginx

    openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./nginx-selfsigned.key -out ./nginx-selfsigned.crt



    ssl     on;
     ssl_certificate     /home/local/ssl-selfsigned/nginx-selfsigned.crt
     ssl_certificate_key /home/local/ssl-selfsigned/nginx-selfsigned.key
