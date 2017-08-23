---
title: Debug Site
---

# A little debug site.

* site.baseurl {{ site.baseurl }}/
* site.url {{ site.url }}
* site.myownbaseurl {{ site.myownbaseurl }}
* href="{{ site.baseurl }}/stylesheets/styles.css"
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

<h2 class = "htw-green20">Gruen 20</h2>
<h2 class = "htw-green40">Gruen 40</h2>
<h2 class = "htw-green60">Gruen 60</h2>
<h2 class = "htw-green80">Gruen 80</h2>
<h2 class = "htw-green100">Gruen 100</h2>
