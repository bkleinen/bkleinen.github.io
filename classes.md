---
title: Classes
author: kleinen
layout: default
---

##  Winter Term WS2016/17

{% include ws2016/lectures.md %}

## Former Classes

### Summer Term 2016

{% include ss2016/lectures.md %}

### Winter Term WS2015/16

{% include ws2015/lectures.md %}

### Summer Term 2015

{% include ss2015/lectures.md %}

### Winter Term 2014/15

{% include ws2014/lectures.md %}

### Summer Term 2014

{% include ss2014/lectures.md %}

### Winter Term 2013/14

{% include ws2013/lectures.md %}

### Summer Term 2013

{% include ss2013/lectures.md %}

### Winter Term 2012/13

{% include ws2012/lectures.md %}

### Summer Term 2012

- Info2
- Praxisprojekt

### Winter Term 2011/12

- Info1
- Aktuelle Themen II: Agile Entwicklung mit Ruby on Rails
- Praxisprojekt


<div id="home">
  <h1>All Anouncements</h1>
  <ul class="posts">
    {% for post in site.posts %}
      <li><span>{{ post.date | date_to_string }}</span> &raquo; <a href="{{ post.url }}">{{ post.title }}</a></li>
    {% endfor %}
  </ul>
</div>
