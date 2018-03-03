<ul class="nav nav-tabs">
{% assign navitems = "Info1-/classes/ss2018/info1/,Schedule-/classes/ss2018/info1/schedule/,Labs-/classes/ss2018/info1/labs/" | split: "," %}
{% for navitem in navitems %}
  <li class="nav-item">
    {% assign n = navitem | split: "-" %}
    <a class="nav-link {% if page.url == n[1] %}active{% endif %}" href="{{ site.baseurl }}{{ n[1] }}">{{ n[0] }}</a>
  </li>
{% endfor %}
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">External Links</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" href="#">Moodle</a>
      <a class="dropdown-item" href="#">LSF</a>
      <a class="dropdown-item" href="#">Semesterstundenplan im LSF</a>
      <a class="dropdown-item" href="https://github.com/htw-imi-info1">Github</a>
    </div>
  </li>
</ul>
