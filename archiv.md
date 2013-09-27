---
title: Archiv
author: kleinen
layout: default
---

# Archiv

  * [SS 2013](ss2013/index.html)
  * [WS 2012](ws2012/index.html)

<div id="home">
  <h1>Aktuelles</h1>
  <ul class="posts">
    {% for post in site.posts %}
      <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
</div>
