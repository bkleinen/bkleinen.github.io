---
title: "{{ replace .Name "-" " " | title }}"
author: kleinen
date: {{ .Date }}
draft: true
weight: 0
tags: []
courses: []
languages: []
{{ $lastUrlElement := index (last 1 (split (delimit (split .Dir "/") "," "") ",")) 0 -}}
aliases: {{ (printf "/%s" $lastUrlElement) }}
courseNavInt:
- title: "{{ replace .Name "-" " " | title }}"
  link: "{{ .Dir }}"
courseNavExt:
- title: LSF
  link: #
---


**Insert Content here.**
