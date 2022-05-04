
# Readme for Instructors

(this file is ignored by hugo due to the ignoreFiles in config)

## Lab Front Matter Workflow

title: 'Exercise 05: A Better Notebook'
author: kleinen
source: https://github.com/htw-imi-info1/exercise05
bk_ok_to_publish: false
source_ok: true
solution_pushed: false
draft: true


## Sourcecode for Lab Exercises
```
{{< source  >}}
```

Lab pages contain a custom field
```
source: https://github.com/htw-imi-info1/exercise05
```
it can be accessed with `.Params.source` on the page.
`{{< source  >}}`

- this should be the only link to the according git repo.
The subpages shortcut
```
{{< subpages  >}}
```

uses this field. see the according partial definition in

hugo/themes/greenpage/layouts/partials/sc_partials/subpages.html

## Add solution to intern repository

    gh repo create htw-imi-info1-intern/$(basename $(pwd)) --private --source=. --remote=intern --push
    git push intern solution
