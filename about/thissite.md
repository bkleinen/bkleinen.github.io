---
title: About this Site
author: kleinen
layout: page
---

## How this site was made

Although this site is nothing special, I made it in a way that eases maintenance for me - its main purpose is publishing mostly textual information to students, and I wanted to do it in the most simple and efficient way.

First, I decided I wanted to use [markdown](http://daringfireball.net/projects/markdown/) rather than editing HTML directly, or using a CMS which stores the information/text in some obscure way making it hard to backup, version or reuse content.

[Github Pages](http://pages.github.com/) offer a great solution to what I wanted - just pushing to the repository triggers a site build.

* [Source for this Site](https://github.com/htw-bk/htw-bk.github.io) - if you find a typo and want to let me know the cool way, [send me a pull request.](https://help.github.com/articles/using-pull-requests)
* The site is generated using [Jekyll](http://jekyllrb.com/)

This site is also deployed to [http://people.f4.htw-berlin.de/~kleinen/](http://people.f4.htw-berlin.de/~kleinen/)

## Sass preprocessing

http://sass-lang.com/tutorial.html

    cd css
    sass --watch main.scss:generated.css main-schedule.scss:generated-schedule.css

* http://de.selfhtml.org for css basics

## Commands for copying

### Web site editing - local site generation

    jekyll serve -w

### Deployment to HTW FB4 server

These are just some notes for me; will be followed with an automatic deployment.
Build for HTW with additional config file:

      jekyll build --config _config.yml,_htwconfig.yml

Copy the _site_htw to public_html on

     uranus.f4.htw-berlin.de

## Automated Testing

This is not yet implemented -
This site is automatically tested using Capybara and Minitest.

https://github.com/jnicklas/capybara
{% comment %}
class CapybaraTestCase < Test::Unit::TestCase
  include Capybara::DSL

  def teardown
    Capybara.reset_sessions!
    Capybara.use_default_driver
  end
end
{% endcomment %}
