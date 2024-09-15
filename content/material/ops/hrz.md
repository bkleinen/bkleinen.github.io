---
title: "Working with HTW Machines"
date: 2021-11-03
draft: false
tools: ['bash','hrz']
tags: ['ops','htw']
courses: ['networks','wt1','info2']
toc: false
---

## Copy files from your HRZ Home Directory (aka HTW-Space)

There are rather verbose manuals about various ways to
copy files from your HTW-RZ home directory to somewhere else.
(see
[Freigabe von Dateien und Ordner über den Webdrive](https://rz.htw-berlin.de/anleitungen/speicherplatz/htw-space/webdrive/freigabe-dateien-und-ordner/)
)

The gist is: you may connect via SSH File Transfer Protocol to the server
webdrive.htw-berlin.de (on default port 22)- see example below.
The [sftp](https://man.openbsd.org/sftp) program used in the example is included in
the [OpenSSH Package](https://www.openssh.com/manual.html); most probably you'll
already have it installed on your computer, e.g. in git-bash on a windows machine.

(The documentation says that you will need to be in the HTW Net or use
the [VPN](https://rz.htw-berlin.de/anleitungen/vpn/); as of this writing the
port is open to the world.)

```bash
ok ~/temp-net # sftp webdrive.htw-berlin.de
**********************************
Welcome to webdrive.htw-berlin.de.
**********************************
kleinen@webdrive.htw-berlin.de's password:
Connected to webdrive.htw-berlin.de.
sftp> pwd
Remote working directory: /
sftp> ls
HRZ GROUPS   home
sftp> get /home/.ssh/id_rsa
Fetching /home/.ssh/id_rsa to id_rsa
/home/.ssh/id_rsa                           100% 2610   440.5KB/s   00:00
sftp>
```

## Note on sftp
sftp as used above is a program implementing the [SSH File Transfer Protocol - Wikipedia](https://en.wikipedia.org/wiki/SSH_File_Transfer_Protocol),
Which implementents commands that make it similar to the old file transfer protocol (ftp).
(FTP over SSH would be something different, see [c# - Differences between SFTP and "FTP over SSH" - Stack Overflow](https://stackoverflow.com/questions/440463/differences-between-sftp-and-ftp-over-ssh) for a discussion)

You may simply type `help` once connected; or refer to the sftp man page [sftp](https://man.openbsd.org/sftp) or this tutorial:
[Nutzung von SFTP zur sicheren Übertragung von Dateien mit einem Remote-Server | DigitalOcean](https://www.digitalocean.com/community/tutorials/how-to-use-sftp-to-securely-transfer-files-with-a-remote-server-de)
