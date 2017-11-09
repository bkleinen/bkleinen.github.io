{% comment %}
taken from
http://stackoverflow.com/questions/9612235/what-are-some-good-ways-to-implement-breadcrumbs-on-a-jekyll-site
{% endcomment %}

{% capture url_parts %} {{ page.url | remove: "/index.html" | replace:'/'," " }}{% endcapture %}
{% capture num_parts %}{{ url_parts | number_of_words }}{% endcapture %}

{% assign seperator ="&#187;" %}



{% assign previous="" %}
<nav aria-label="breadcrumb" role="navigation">
  <ol class="breadcrumb">
   <li class="breadcrumb-item"><a href="{{ site.baseurl }}">Home</a></li>
 {% if num_parts == "0" or num_parts == "-1" %}
  &nbsp;
 {% else %}

  {% for unused in site.breadcrumb_list limit:num_parts %}
   {% capture first_word %}{{ url_parts | truncatewords:1 | remove:"..."}}{% endcapture %}
  {% capture previous %}{{ previous }}{{ first_word }}/{% endcapture %}

  {% capture url_parts %}{{ url_parts | remove_first:first_word }}{% endcapture %}
  {% capture remaining %}{{ url_parts | number_of_words}}{% endcapture%}



   {% if remaining != "0" %}
     <li class="breadcrumb-item"><a href="{{ site.baseurl }}/{{previous}}">{{ first_word }}</a></li>
   {% else %}
     <li class="breadcrumb-item active" aria-current="page">{{ first_word }}</li>
   {% endif  %}


  {% endfor %}
    </ol>

 {% endif %}
</nav>
