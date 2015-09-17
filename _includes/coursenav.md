
{% capture fn %}{{page.path | replace:'/'," "  | truncatewords:2 | replace:'...',"" |  replace:' ',"/" | append: '.md'  }}{% endcapture %}

{% capture available %}ws2015/info3.md ws2015/info1.md ws2015/wt1wa.md{% endcapture %}
{% capture remainder %}{{available | remove:fn  }}{% endcapture %}

{% if available != remainder %}
{% capture cn %}{% include {{fn}} %}{% endcapture %}
{{ cn | markdownify  }}
{% endif %}
