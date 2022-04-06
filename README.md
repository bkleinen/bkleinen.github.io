bkleinen.github.io
==================

This is the repository behind my web page:

Production HTW: [https://home.htw-berlin.de/~kleinen/](https://home.htw-berlin.de/~kleinen/) [![Deploy Production / HTW](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-production-htw.yml/badge.svg)](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-production-htw.yml)

Production Github Pages: [https://bkleinen.github.io/](https://bkleinen.github.io/) [![Deploy Production / Github](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-production-github.yml/badge.svg)](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-production-github.yml)

Staging: [https://bkleinen.github.io/staging/](https://bkleinen.github.io/staging/)[![Deploy Staging](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-staging.yml/badge.svg)](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-staging.yml)

StagingDrafts (currently from branch ss22_info1): [https://bkleinen.github.io/stagingdrafts/](https://bkleinen.github.io/stagingdrafts/)[![Deploy Staging Drafts](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-staging-drafts.yml/badge.svg)](https://github.com/bkleinen/bkleinen.github.io/actions/workflows/deploy-staging-drafts.yml)


If you find information here - or on the staging server - that is not (yet) linked from your course's page - especially lab exercises -
be aware that I haven't released them yet for the current term, so they might and probably will change at least a bit.

Apart from that, feel free to browse and also send me a [pull request](https://docs.github.com/en/github/collaborating-with-pull-requests/proposing-changes-to-your-work-with-pull-requests/about-pull-requests) if you encounter an error.

# Now on Hugo

    git clone git@github.com:bkleinen/bkleinen.github.io.git
    cd bkleinen.github.io

    make hugo

(local installation of [Hugo](https://gohugo.io/) needed.)

# Deployment

Automatic deployment via github actions, see https://github.com/bkleinen/bkleinen.github.io/actions

## Overview

| branch/tag | config        | env        | drafts | target url                                |
|:---------- |:------------- |:---------- |:------ |:----------------------------------------- |
| main       | staging       | staging    | no     | https://bkleinen.github.io/staging/       |
| main       | stagingdrafts | staging    | yes    | https://bkleinen.github.io/stagingdrafts/ |
| v0.0       | production    | production | no     | http://bkleinen.github.io/             |
| v0.0       | htw           | production | no     | https://home.htw-berlin.de/~kleinen/      |
| v0.0       | progwebtec    | production | no     | http://progwebtec.github.io/              |



## Deploy via Makefile

        make c m="commit message"
        make deploy

(assuming access rights)

See [makefile](makefile) for other useful targets.

## overview

ss22_info1 -> https://bkleinen.github.io/stagingdrafts/

und gerade auch nach https://progwebtec.github.io/

main -> https://bkleinen.github.io/staging/ (ohne drafts)

version tag -> http://bkleinen.github.io/ und https://home.htw-berlin.de/~kleinen/

(siehe makefile,  make deploy)

.. und dann auch nach https://progwebtec.github.io/

# Markdown

Hugo uses [Goldmark markdown](https://www.markdownguide.org/tools/hugo/).
