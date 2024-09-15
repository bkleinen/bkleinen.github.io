---
title: "Nginx"
date: 2021-10-08
draft: false
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

## HTTPS

To set up a secure connection via https, you need to obtain a certificate and
a key. For staging servers as ours, using a self-signed certificate is an option.

Your browser will issue a warning when you access the site, however, and you need
to adjust the browser's security settings resp. configure an exception for your
site (try it with my site: )

You need to

- generate or obtain the certificate and key
- put them on the server (or generate them directly on the server)
- configure a nginx server block with `listen 443 ssl;` and configure
  the correct path to your certificate + key
- restart nginx
- open port 443 in the firewall

If you want to understand what you are doing, here are some links

- a brief video: [How does HTTPS work? What's a CA? What's a self-signed Certificate? - YouTube](https://www.youtube.com/watch?v=T4Df5_cojAs)
- another tutorial: [Creating a Self-Signed SSL Certificate | Heroku Dev Center](https://devcenter.heroku.com/articles/ssl-certificate-self)
- and more background: [14. SSL and HTTPS - YouTube](https://www.youtube.com/watch?v=q1OF_0ICt9A)

### Generate a self signed certificate

e.g. with (note the output file names in the command:)

```bash
    $ openssl req -x509 -nodes -days 365 -newkey rsa:2048 -keyout ./nginx-selfsigned.key -out ./nginx-selfsigned.crt
```

Note: instead of using a self-signed certificate, you can aquire one from Certbot:
[Certbot Instructions | Certbot](https://certbot.eff.org/instructions?ws=nginx&os=debian-10)

### Create SSL server block

See [this commit](https://github.com/htw-imi-networks/example-config/commit/fbef03b8dcd571bb641c20a5f325992c800ed919
) for an example. The key parts are:

```bash
     listen 443 ssl;
     ...
     ssl_certificate     /home/local/ssl-selfsigned/nginx-selfsigned.crt
     ssl_certificate_key /home/local/ssl-selfsigned/nginx-selfsigned.key
```

Note that these are absolute file paths that need to match your actual location,
and that you would put them in a more central location for a "real" server config.

### Test Config & Restart Nginx

```bash
    $ sudo nginx -t
    $ sudo systemctl restart nginx
```

### Open Port 443 in the firewall

Die Firewall auf den Debian-Servern wird mit diesem Script konfiguriert:

`/root/firewall.sh`

finden Sie diese Zeilen und entfernen Sie die Kommentare:
(oben im Script ist auch eine Anleitung; bei der Gelegenheit können Sie
auch die Ports 80 für http und 22 für ssh nach aussen aufmachen)

```bash
#
# kommentare wegnehmen: HTTPS INPUT OUTPUT zulassen
#
iptables -A INPUT -p tcp --dport 443 -j ACCEPT
iptables -A OUTPUT -p tcp --dport 443 -j ACCEPT
```

dann das script ausführen:

```bash

sudo /root/firewall.sh
```

und ausprobieren!

#
