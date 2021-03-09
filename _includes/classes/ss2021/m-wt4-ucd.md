<ul class="nav nav-tabs">
{% assign navitems = "M-WT4-UCD:/classes/ss2021/m-wt4-ucd/,Schedule:/classes/ss2021/m-wt4-ucd/schedule/,Reports:/classes/ss2021/m-wt4-ucd/reports/" | split: "," %}

{% comment %}
,Code:/classes/ss2021/m-wt4-ucd/code/,Labs:/classes/ss2021/m-wt4-ucd/labs/
{% endcomment %}

{% for navitem in navitems %}
  <li class="nav-item">
    {% assign n = navitem | split: ":" %}
    <a class="nav-link {% if page.url == n[1] %}active{% endif %}" href="{{ site.baseurl }}{{ n[1] }}">{{ n[0] }}</a>
  </li>
{% endfor %}
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">External Links</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" target = "ex_link" href="">Moodle</a>
      <a class="dropdown-item" target = "ex_link" href="">Wiki</a>
      <a class="dropdown-item" target = "ex_link" href="">LSF</a>
      <a class="dropdown-item" target = "ex_link" href="">Semesterstundenplan im LSF</a>

    </div>
  </li>
</ul>
