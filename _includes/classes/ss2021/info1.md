<ul class="nav nav-tabs">
{% assign navitems = "Info1-/classes/ss2021/info1/,Week Plan-/classes/ss2021/info1/week/,Schedule-/classes/ss2021/info1/schedule/,Labs-/classes/ss2021/info1/labs/,Code Examples-/classes/ss2021/info1/code/" | split: "," %}
{% for navitem in navitems %}
  <li class="nav-item">
    {% assign n = navitem | split: "-" %}
    <a class="nav-link {% if page.url == n[1] %}active{% endif %}" href="{{ site.baseurl }}{{ n[1] }}">{{ n[0] }}</a>
  </li>
{% endfor %}
<li class="nav-item dropdown">
    <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">External Links</a>
    <div class="dropdown-menu">
      <a class="dropdown-item" target = "ex_link" href="https://moodle.htw-berlin.de/course/view.php?id=31142">Moodle</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=verpublish&status=init&vmfile=no&publishid=170115&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung">SU in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=verpublish&status=init&vmfile=no&publishid=170138&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung">Labs in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&P.subc=plan&k_abstgv.abstgvnr=231&idcol=k_abstgv.abstgvnr&idval=231&r_zuordabstgv.semvonint=1&k_abstgv.dtxt=internationale&r_zuordabstgv.sembisint=1&purge=n&getglobal=n&text=Internationale+Medieninformatik+%28B%29%2C+Pr%C3%BCfungsOrdnung+20112">Semesterstundenplan im LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&show=plan&P.vx=kurz&r_zuordabstgv.semvonint=1&r_zuordabstgv.sembisint=1&k_abstgv.abstgvnr=231">Lecture Source Code</a>
        </div>
  </li>
</ul>
