---
title: Ruby Gems in den Laboren
author: kleinen
layout: page
---

**This is work in progress** 29.7.2014

# Windows

# MacOs

## RVM

* siehe https://rvm.io



# Linux

# Installationstest

z.B. Rails installieren/updaten, Rails Applikation erzeugen und starten (in einem beliebigen Verzeichnis, in dem die Rails Applikation erzeugt werden soll):

## RVM unter Linux und MacOs: Ruby Version festlegen, Gemset kreieren & verwenden
    rvm use 2.1.2
    rvm gemset create rails
    rvm gemset use rails

man kann sich auch automatisch eine .ruby-version und .ruby-gemset datei generieren lassen, die dann dafür sorgt, dass rvm automatisch beim Wechseln in dieses Verzeichnis die richtigen Versionen auswählt

    rvm --ruby-version use 2.1.2@rails


## Rails Installieren und Testen

    gem install rails              # oder gem update rails - installiert rails
    rails new myApp               # erzeugt rails app und installiert gems; "myApp" ist der name der app
    cd myApp/
    rails server                   # started rails server, in anderer shell:
    open https://localhost:3000


Dann müsste man die "Welcome Aboard" - Seite von Rails angezeigt bekommen. Natürlich müssen alle scripte ohne Fehler durchlaufen!
