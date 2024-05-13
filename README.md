bkleinen.github.io
==================

This is the repository behind my web page:

Production HTW: [https://home.htw-berlin.de/~kleinen/](https://home.htw-berlin.de/~kleinen/)

Production Github Pages: [https://bkleinen.github.io/](https://bkleinen.github.io/)

If you find information here - or on the staging server - that is not (yet) linked from your course's page - especially lab exercises -
be aware that I haven't released them yet for the current term, so they might and probably will change at least a bit.

Apart from that, feel free to browse and also send me a [pull request](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests) if you encounter an error.

# Now on Hugo

Prerequisites:

- git
- [Hugo](https://gohugo.io/)
- optional: make if using

## Checkout

    git clone git@github.com:bkleinen/bkleinen.github.io.git
    cd bkleinen.github.io

## Start with make

    make hugo

## Start without make

    cd hugo ; npm install ; cd ..
    hugo --buildDrafts --source hugo -p 4242 server

## start options

    See the [makefile](makefile) and the hugo doc for other startup options.

# Deployment

Automatic deployment via github actions, see https://github.com/bkleinen/bkleinen.github.io/actions

## Overview

| branch/tag | config        | env        | drafts | target url                                | Status                                                                                                                                                                                                                                  | GH Pages Deployment                                                                                                                                                                                                                                                                                                                                                                                                                                                                    |
|:-----------|:--------------|:-----------|:-------|:------------------------------------------|:----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|:---------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------|
| main       | staging       | staging    | no     | https://bkleinen.github.io/staging/       | [![Deploy Staging](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-staging.yml/badge.svg)](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-staging.yml)                                 | [![pages-build-deployment](https://github.com/bkleinen/staging/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/bkleinen/staging/actions/workflows/pages/pages-build-deployment)                                                                                                                                                                                                                                                                          |
| main       | stagingdrafts | staging    | yes    | https://bkleinen.github.io/stagingdrafts/ | [![Deploy Staging Drafts](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-staging-drafts.yml/badge.svg)](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-staging-drafts.yml)            | [![pages-build-deployment](https://github.com/bkleinen/staging/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/bkleinen/staging/actions/workflows/pages/pages-build-deployment)                                                                                                                                                                                                                                                                          |
| v0.0       | production    | production | no     | http://bkleinen.github.io/                | [![Deploy Production / Github](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-production-github.yml/badge.svg)](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-production-github.yml) | [![pages-build-deployment](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/pages/pages-build-deployment)                                                                                                                                                                                                                                                    |
| v0.0       | htw           | production | no     | https://home.htw-berlin.de/~kleinen/      | [![Deploy Production / HTW](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-production-htw.yml/badge.svg)](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-production-htw.yml)          |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |
| v0.0       | progwebtec    | production | no     | http://progwebtec.github.io/              | [![Deploy Production / progwebtec.github.io](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-progwebtec.yml/badge.svg)](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-progwebtec.yml) | [![pages-build-deployment](https://github.com/progwebtec/progwebtec.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/progwebtec/progwebtec.github.io/actions/workflows/pages/pages-build-deployment)[![pages-build-deployment](https://github.com/progwebtec/progwebtec.github.io/actions/workflows/pages/pages-build-deployment/badge.svg)](https://github.com/progwebtec/progwebtec.github.io/actions/workflows/pages/pages-build-deployment) |
|            |               |            |        |                                           |                                                                                                                                                                                                                                         |                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        |


## Deploy via Makefile

    make c m="commit message"
    make deploy

(assuming access rights)

See [makefile](makefile) for other useful targets.

## Deploy w/o Makefile

There have been some reports that make on Windows complains about the format of the makefile. In such cases, a deployment can also be triggered manually:

    git pull origin main
    git push origin main
    git tag (search the latest tag in the output and increment, e.g. if the latest tag is v1.94, use v1.95 in the subsequent steps)
    git tag <incremented tag> (e.g. git tag v1.95)
    git push origin <incremented tag> (e.g. git push origin v1.95)

# Link Checker

Hugo Internal Broken Link Checker · Actions · GitHub Marketplace: https://github.com/marketplace/actions/hugo-internal-broken-link-checker?version=v1.1.0
marojor/hugo-broken-link-checker: GitHub Action to check from broken links in an Hugo site: https://github.com/marojor/hugo-broken-link-checker

# Markdown

Hugo uses [Goldmark markdown](https://www.markdownguide.org/tools/hugo/).

# Notes on Hugo Setup

The [Makefile](./Makefile) serves both as shortcuts and documentation for
hugo build configurations.

This sites uses an own theme contained in this repository.

In development/debug mode [debug.html](hugo/themes/greenpage/layouts/partials/debug.html)
shows many variables/values useful for debugging.


## Classes section logic

### subtypes within classes section

| Path                      | classes_type  |
|:--------------------------|:--------------|
| /classes                  | all_classes   |
| /classes/ss2023/          | semester      |
| /classes/ss2023/info1     | class         |
| /classes/ss2023/info1/... | class_subpage |


{{
  $types := (dict
  "all_classes" "/classes/$"  
  "class_subpage" "/classes/[^/]*/[^/]*/.+"
  "semester" "/classes/[^/]*/$"
  "class" "/classes/[^/]*/[^/]*/$")
}}



All Class Sections have their own subnavigation, defined in
[hugo/themes/greenpage/layouts/partials/classes/coursenav.html](hugo/themes/greenpage/layouts/partials/classes/coursenav.html)

### Courses page title

- html title
- header on top of page
- page title below course navigation

### Courses Subnavigation
The Classes Subnavigation consists of an internal part (subpages) and external part
(e.g. links to LSF, github, moodle). it can be configured in the section _index.md


## Book Topology
tbd

# Useful Shortcuts

```
{{<alert info>}}

{{</alert>}}

```

# Aliases

see Makefile and data/aliases.yml

    make aliases_update
    make aliases_list

# Bibliography

## empty bib entry
type = "video"
key =
author =
title =
duration =
url =
accessed =
series =
series_url =
year =
about =
# about_url =
notes = '''
'''
media_type = "Video"
media_provider = "YouTube"
tags = []




<script src="node_modules/axe-core/axe.min.js"></script>


# Changelog

## Add Math
Monday, 13.May 2024 
add tex / math: 
https://gohugo.io/content-management/mathematics/

	modified:   hugo/content/debug/_index.md
	modified:   hugo/layouts/debug/list.html
	modified:   hugo/themes/greenpage/layouts/_default/baseof.html
	new file:   hugo/themes/greenpage/layouts/partials/math.html
