<ul class="nav nav-tabs">
{% assign navitems = "Info1-/classes/ss2021/info1/,Schedule-/classes/ss2021/info1/schedule/,Labs-/classes/ss2021/info1/labs/" | split: "," %}
{% for navitem in navitems %}
  <li class="nav-item">
    {% assign n = navitem | split: "-" %}
    <a class="nav-link {% if page.url == n[1] %}active{% endif %}" href="{{ site.baseurl }}{{ n[1] }}">{{ n[0] }}</a>
  </li>
{% endfor %}
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">External Links</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" target = "ex_link" href="#">Moodle</a>
      <a class="dropdown-item" target = "ex_link" href="#">SU in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="#">Labs in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="#">Semesterstundenplan im LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&show=plan&P.vx=kurz&r_zuordabstgv.semvonint=1&r_zuordabstgv.sembisint=1&k_abstgv.abstgvnr=231">Lecture Source Code</a>
        </div>
  </li>
</ul>
