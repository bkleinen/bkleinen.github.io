
<ul class="nav nav-tabs">
{% assign navitems = "Info2-/classes/ws2018/info2/,Schedule-/classes/ws2018/info2/schedule/,Labs-/classes/ws2018/info2/labs/,Material-/classes/ws2018/info2/material/" | split: "," %}
{% for navitem in navitems %}
  <li class="nav-item">
    {% assign n = navitem | split: "-" %}
    <a class="nav-link {% if page.url == n[1] %}active{% endif %}" href="{{ site.baseurl }}{{ n[1] }}">{{ n[0] }}</a>
  </li>
{% endfor %}
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">External Links</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" target = "ex_link" href="https://moodle.htw-berlin.de/course/view.php?id=18155">Moodle</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wsearchv&search=2&veranstaltung.veranstid=142809">SU in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wsearchv&search=2&veranstaltung.veranstid=142634">Labs in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&show=plan&P.vx=kurz&r_zuordabstgv.semvonint=2&r_zuordabstgv.sembisint=2&missing=allTerms&k_abstgv.abstgvnr=231">Semesterstundenplan im LSF</a>

      <a class="dropdown-item" target = "ex_link" href="https://github.com/htw-imi-info2">Github</a>
    </div>
  </li>
</ul>


{% comment %}
| <a href="{{ site.baseurl }}/classes/ss2017/info2/handouts">Handouts</a>
| <a href="{{ site.baseurl }}/classes/ss2017/info2/worksheets">Worksheets</a>
| <a href="{{ site.baseurl }}/classes/ss2017/info2/klausurfragen">Klausurfragen</a>
{% endcomment %}
