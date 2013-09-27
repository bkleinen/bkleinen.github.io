{% comment %}
taken from
http://stackoverflow.com/questions/9612235/what-are-some-good-ways-to-implement-breadcrumbs-on-a-jekyll-site
{% endcomment %}

{% capture url_parts %} {{ page.url | remove: "/index.html" | replace:'/'," " }}{% endcapture %}
{% capture num_parts %}{{ url_parts | number_of_words | minus: 1 }}{% endcapture %}


{% assign seperator ="&#187;" %}
{% assign seperator ="|" %}

{% assign previous="" %}
<div class = "breadcrumbs">
  <a href="/">home</a>
 {% if num_parts == "0" or num_parts == "-1" %}
  &nbsp;
 {% else %}
  {{seperator}}

  {% for unused in site.breadcrumb_list limit:num_parts %}
   {% capture first_word %}{{ url_parts | truncatewords:1 | remove:"..."}}{% endcapture %}
   {% capture previous %}{{ previous }}/{{ first_word }}{% endcapture %}

   <a href="{{previous}}">{{ first_word }}</a>

   {% capture url_parts %}{{ url_parts | remove_first:first_word }}{% endcapture %}
   {% capture remaining %}{{ url_parts | number_of_words}}{% endcapture%}
   {% if remaining != "1" %}
     {{seperator}}
   {% endif  %}


  {% endfor %}
 {% endif %}
</div>
