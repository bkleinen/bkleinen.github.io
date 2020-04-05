
{% capture fn %}{{page.path | replace:'/'," "  | truncatewords:3 | replace:'...',"" |  replace:' ',"/" | append: '.md'  }}{% endcapture %}

{% capture available %}classes/ws2015/info3.md classes/ws2015/info1.md classes/ws2015/wt1wa.md classes/ws2016/info1.md classes/ws2016/media-programming-rails.md classes/ws2017/info3.md classes/ws2017/wtat2.md classes/ws2017/media-programming-rails.md
classes/ss2018/info1.md classes/ss2018/media-programming-rails.md classes/ss2018/wt4.md
classes/ws2018/wt2.md classes/ws2018/info2.md
classes/ws2019/info1.md
classes/ws2019/wt2-usability.md
classes/ws2019/m-wt1-webapplications.md
classes/ws2019/m6-project.md
classes/ws2019/m1-web.md
classes/ss2020/info2.md
classes/ss2020/wtat1.md
classes/ss2020/m1-web.md
classes/ss2020/m-wt4-ucd.md
index.md.md
{% endcapture %}

{% capture remainder %}{{available | remove:fn  }}{% endcapture %}

{% comment %}
<br/>page.path  {{ page.path }}
<br/>fn {{ fn }}
<br/>available {{ available }}
<br/>remainder {{ remainder }}

{% endcomment %}

{% if available != remainder %}
{% capture cn %}{% include {{fn}} %}{% endcapture %}
{{ cn | markdownify  }}
{% endif %}
