
{% capture fn %}{{page.path | replace:'/'," "  | truncatewords:3 | replace:'...',"" |  replace:' ',"/" | append: '.md'  }}{% endcapture %}

{% capture available %}classes/ws2015/info3.md classes/ws2015/info1.md classes/ws2015/wt1wa.md classes/ws2016/info1.md classes/ws2016/media-programming-rails.md classes/ws2017/info3.md classes/ws2017/wtat2.md classes/ws2017/media-programming-rails.md
classes/ss2018/info1.md classes/ss2018/media-programming-rails.md {% endcapture %}

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
