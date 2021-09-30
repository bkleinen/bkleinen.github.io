bkleinen.github.io
==================

This is the repository behind my web page,

[https://bkleinen.github.io/](https://bkleinen.github.io/)

also available at

[https://home.htw-berlin.de/~kleinen/](https://home.htw-berlin.de/~kleinen/)

If you find information here that is not (yet) linked from your course's page - especially lab exercises -
be aware that I haven't released them yet for the current term, so they might and probably will change at least a bit.

Apart from that, feel free to browse and also send me pull requests if you encounter an error.

[A bit more about how this site is made and edited.](https://bkleinen.github.io/about/thissite.html)

# Now on Hugo

    git clone git@github.com:bkleinen/bkleinen.github.io.git
    cd bkleinen.github.io
    git checkout main
    cd hugo
    make hugo

# Deployment

- via github actions: https://github.com/bkleinen/bkleinen.github.io/actions
- all pushes to main are pushed to https://bkleinen.github.io/staging/
- deployment to both production servers is triggered by pushing a tag (hopefully...)

     git tag v0.4
     git push origin v0.4
