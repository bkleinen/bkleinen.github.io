<ul class="nav nav-tabs">
{% assign navitems = "Info2-/classes/ws2021/info2/,Schedule-/classes/ws2021/info2/schedule/,Material-/classes/ws2021/info2/material/,Labs-/classes/ws2021/info2/labs/" | split: "," %}
{% for navitem in navitems %}
  <li class="nav-item">
    {% assign n = navitem | split: "-" %}
    <a class="nav-link {% if page.url == n[1] %}active{% endif %}" href="{{ site.baseurl }}{{ n[1] }}">{{ n[0] }}</a>
  </li>
{% endfor %}
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">External Links</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" target = "ex_link" href="https://moodle.htw-berlin.de/course/view.php?id=33324">Moodle</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=verpublish&status=init&vmfile=no&publishid=179751&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung">SU in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wsearchv&search=2&veranstaltung.veranstid=176899">Labs in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&show=plan&P.vx=kurz&r_zuordabstgv.semvonint=2&r_zuordabstgv.sembisint=2&k_abstgv.abstgvnr=231">Semesterstundenplan im LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://github.com/htw-imi-info2">Github</a>
    </div>
  </li>
</ul>
