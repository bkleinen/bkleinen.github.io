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

- via github actions: https://github.com/bkleinen/bkleinen.github.io/actions
- all pushes to main are pushed to https://bkleinen.github.io/staging/
- deployment to both production servers is triggered by pushing a tag v0.0
- see makefile for useful targets, e.g.

        make c m="commit message"
        make deploy

(assuming access rights)

# Markdown

Hugo uses [Goldmark markdown](https://www.markdownguide.org/tools/hugo/).
