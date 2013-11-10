---
title: About this Site
author: kleinen
layout: page
---

## How this site was made

Although this site is nothing special, I made it in a way that eases maintenance for me - its main purpose is publishing mostly textual information to students, and I wanted to do it in the most simple and efficient way.

First, I decided I wanted to use [markdown](http://daringfireball.net/projects/markdown/) rather than editing HTML directly, or using a CMS which stores the information/text in some obscure way making it hard to backup, version or reuse content.

[Github Pages](http://pages.github.com/) offer a great solution to what I wanted - just pushing to the repository triggers a site build.

* [Source for this Site](https://github.com/htw-bk/htw-bk.github.io) - if you find a typo and want to let me know the cool way, [send me a pull request](https://help.github.com/articles/using-pull-requests). But be beware, you might find content there that is not yet meant to be published - especially the exercises from former semesters. Don't start working on them, I might decide to change them and they don't become official before I link them from the classes' page!


This site is also deployed to [http://people.f4.htw-berlin.de/~kleinen/](http://people.f4.htw-berlin.de/~kleinen/).

## Jekyll

This site uses Jekyll as site generator - producing a static HTML site out of markdown sources
and layout templates.

* [Jekyll](http://jekyllrb.com/)

* On Github, Jekyll is triggered automatically on each push to the repository
http://github.com/bkleinen/bkleinen.github.io and publishes the page to
http://bkleinen.github.io
* for publishing to [http://people.f4.htw-berlin.de/~kleinen/](http://people.f4.htw-berlin.de/~kleinen/) I use this script: [_bin/deploy-htw.sh](https://github.com/bkleinen/bkleinen.github.io/blob/master/_bin/deploy-htw.sh)
* locally, I run

        jekyll serve -w
  to have the site served on localhost:4000 and automatically rebuilt on every file save.

## Sass preprocessing

To ease working on the css stylesheets, I also use [Sass](http://sass-lang.com/) preprocessing.
While working on the sass files, I do

    cd css
    sass --watch main.scss:generated.css main-schedule.scss:generated-schedule.css

to have the css files automatically re-generated while I'm working on them.
They are then just committed as generated files, as github wouldn't regenerate
them, as their site generator doesn't allow unsafe plugins.

* http://sass-lang.com/tutorial.html
* http://de.selfhtml.org for css basics

{% comment %}
## Commands for copying

These are just some notes for myself!

### Deployment to HTW FB4 server

will be followed with an automatic deployment.
Build for HTW with additional config file:

      jekyll build --config _config.yml,_htwconfig.yml

Copy the _site_htw to public_html on

     scp -r _site_htw/* kleinen@uranus.f4.htw-berlin.de:~/public_html

## Automated Testing

This is not yet implemented -
This site is automatically tested using Capybara and Minitest.

https://github.com/jnicklas/capybara

class CapybaraTestCase < Test::Unit::TestCase
  include Capybara::DSL

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
{% endcomment %}
