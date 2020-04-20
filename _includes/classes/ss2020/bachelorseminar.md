<ul class="nav nav-tabs">
{% assign navitems = "Bachelorseminar-/classes/ss2020/bachelorseminar/,Schedule-/classes/ss2020/bachelorseminar/schedule/" | split: "," %}
{% for navitem in navitems %}
  <li class="nav-item">
    {% assign n = navitem | split: "-" %}
    <a class="nav-link {% if page.url == n[1] %}active{% endif %}" href="{{ site.baseurl }}{{ n[1] }}">{{ n[0] }}</a>
  </li>
{% endfor %}
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">External Links</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" target = "ex_link" href="https://moodle.htw-berlin.de/course/view.php?id=27251">Moodle</a>
    </div>
  </li>
</ul>
