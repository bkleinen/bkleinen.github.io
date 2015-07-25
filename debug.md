---
title: Debug Site
---

# A little debug site.

* site.baseurl {{ site.baseurl }}
* href="{{site.baseurl}}stylesheets/styles.css"
* site.encoding: {{ site.encoding }}
* site.serverencoding: {{ site.serverencoding }}
* &auml;: ä
* &eacute;: é
* esszett: ß

## Site info
* site.static_files: {{ site.static_files  | map: 'path' | array_to_sentence_string }}

* site.documents:  {{ site.documents  | map: 'path' | array_to_sentence_string }}
* site.documents:  {{ site.documents  | map: 'title' | array_to_sentence_string }}
* site.documents:  {{ site.documents  }}

# http://jekyllrb.com/docs/variables/

* site.pages: {{ site.pages  | map: 'path' | array_to_sentence_string }}
