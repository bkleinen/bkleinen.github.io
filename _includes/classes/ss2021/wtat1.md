<ul class="nav nav-tabs">
{% assign navitems = "WTAT1:/classes/ss2021/wtat1/,Schedule:/classes/ss2021/wtat1/schedule/,Topics:/classes/ss2021/wtat1/topics/,Literature:/classes/ss2021/wtat1/literature/" | split: "," %}
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
      <a class="dropdown-item" target = "ex_link" href="https://github.com/htw-imi-wtat1">GitHub</a>
      <a class="dropdown-item" target = "ex_link" href="">SU in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="">Labs in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="">Semesterstundenplan im LSF</a>
    </div>
  </li>
</ul>
