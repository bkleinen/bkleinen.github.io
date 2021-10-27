---
title: "Debian Server"
date: 2021-10-20
draft: false
tools: []
tags: ['web','ops']
courses: ['networks','wt1']
toc: true
---

This is a short Manual on how to configure a Debian virtual Server hosted at HTW FB4.


# General Things

## Snowflakes

Configuring a server manually results in a [Snowflake Server](https://martinfowler.com/bliki/SnowflakeServer.html).

I've logged the config changes as best I could in this repo, check the [commits](https://github.com/htw-imi-networks/example-config/commits/main):
[https://github.com/htw-imi-networks/example-config](https://github.com/htw-imi-networks/example-config)

## Shell & Path

... TBD

### Path

```bash
# echo $PATH
```

## Editor

You should be able to survive in one of the available editors, e.g. [VI](/material/ops/vi/)

Set the default editor to ensure it is used eg. by visudo:

```bash
root@infrastructure:~ # update-alternatives --config editor
```

* [TextEditor - Debian Wiki](https://wiki.debian.org/TextEditor)
## Firewall

There is a script that configures the firewall. Don't touch it for now.
If you want to,

```bash
# sudo vi ~root/firewall.sh
# sudo ~root/firewall.sh
```


# First Login

## Initial Configuration of Debian Virtual Machines
Each group will get and share a virtual machine for the term.
The machines will be assigned in the lab.

Note: replace <your-server> with the name of your server - see [BNF](/material/languages/bnf)

<your-server>

# Setup Users for all Team Members

You should always log in with a different user and become root once you are on the machine. Use the given user `local` for the first login:

```bash
# ssh local@<your-server>.f4.htw-berlin.de
```

Then, become root and create a user for each person in your group. It’s convenient to use the same user name as on your local machine.

```bash
local@<your-server>:~ # su -
Password:
root@<your-server>:~ # adduser <username>
Adding user `<username>' ...
Adding new group `<username>' (1001) ...
Adding new user `<username>' (1001) with group `<username>' ...
Creating home directory `/home/<username>' ...
Copying files from `/etc/skel' ...
New password:

```


## Edit Path

/usr/sbin is missing in the path, add it to bashrc.

```bash
# echo "export PATH=/usr/sbin/:$PATH" >> ~/.bashrc
```

## Public Key Authorisation

It's convenient to set up public key authorization. To do so, generate
a key pair per user and add the public key to the file `~/.ssh/authorized_keys`


On your machine:

```bash
# ssh-keygen -t rsa -b 4096 -C "barne.<username>@htw-berlin.de"
```

Copy the key:

```bash
# ssh-copy-id -i ~/.ssh/id_rsa.pub <username>@<your-server>.f4.htw-berlin.de
/usr/bin/ssh-copy-id: INFO: Source of key(s) to be installed: "/Users/<username>/.ssh/id_rsa.pub"
/usr/bin/ssh-copy-id: INFO: attempting to log in with the new key(s), to filter out any that are already installed
/usr/bin/ssh-copy-id: INFO: 1 key(s) remain to be installed -- if you are prompted now it is to install the new keys
<username>@<your-server>.f4.htw-berlin.de's password:

Number of key(s) added:
   1

Now try logging into the machine, with:
"ssh '<username>@<your-server>.f4.htw-berlin.de'"
and check to make sure that only the key(s) you wanted were added.

```

# Add Users to Sudoers

## What is Sudo

SU - Substitute User
Do - Do

- execute a command as root.

As you all administrate the server, you should add all users to the [sudoers](https://de.wikipedia.org/wiki/Sudo#:~:text=sudo%20(%5B%CB%88su%CB%90du%CB%90%5D%2C%20Akronym,des%20Superusers%20root)%20zu%20starten.&text=Der%20dauerhafte%20Wechsel%20der%20Identit%C3%A4t,%2Ds%20und%20sudo%20%2Di%20.).

* [sudo - Debian Wiki](https://wiki.debian.org/sudo/)

## Add User to Group sudo

Login and become root.

```bash
# ssh local@<your-server>
# su -
```

Add users to unix group "sudo"

```bash
root@infrastructure:~ # adduser <user> sudo
Adding user `kleinen' to group `sudo' ...
Adding user kleinen to group sudo
Done.
```

-> jetzt geht sudo mit password.

## Enable passwordless sudo

Edit /etc/sudoers using the visudo command (which does not necessarily open vi
as the command suggests, but your default editor - see above).

Note: In general, this is a bad idea - but for practicing server setup,
it's convenient. If something goes wrong, we'll just throw away the server.

```bash
root@infrastructure # visudo

```

and add the line `%sudo   ALL=(ALL) NOPASSWD: ALL`
- see this [commit](https://github.com/htw-imi-networks/example-config/commit/14842f8b6eacab0d4642242c1fbb92c744bf4adb)

* [sudo - Debian Wiki](https://wiki.debian.org/sudo/)



# Install Nginx


Installing Nginx is pretty straightforward. I found a good introduction from
Digital Ocean,just follow it - **but skip the firewall part!**

[How to Install Nginx on Debian 10 | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-install-nginx-on-debian-10)

(Firewall: we don’t have the newer ufw firewall yet. For now, you don’t need to adjust the firewall settings, Port 80 is open, so you don’ t need to do anything)

* systemctl status nginx
* systemctl stop nginx
* systemctl start nginx

## Create a configuration and link it to sites-enabled

```bash
# sudo vi /etc/nginx/sites-available/infrastructure
...
# sudo ln -s /etc/nginx/sites-available/infrastructure /etc/nginx/sites-enabled/

```

see the [commit](https://github.com/htw-imi-networks/example-config/commit/91199f605ac704654403f3027077b570abc10946)
for the complete example.


# Operation System & Debian Doc

You can get info about the os with `lsb_release -a`

* [Chapter 1. GNU/Linux tutorials](https://www.debian.org/doc/manuals/debian-reference/ch01.en.html#_links)
* [Debian -- Documentation](https://www.debian.org/doc/)
    - contains the administrator’s handbook and the Debian reference
