---
title: Archiv
author: kleinen
layout: default
---

# Archiv

<h1>Lectures WS 2013/2014</h1>
<ul>
<li><a href="{{site.baseurl}}ws2013/info1">Informatik 1</a></li>
<li><a href="{{site.baseurl}}ws2013/info3">Informatik 3</a></li>
<li><a href="{{site.baseurl}}ws2013/project">Praxisprojekt</a></li>
</ul>

<h1>Older Lectures</h1>

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
