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
      <a class="dropdown-item" target = "ex_link" href="https://moodle.htw-berlin.de/course/view.php?id=31139">Moodle</a>
      <a class="dropdown-item" target = "ex_link" href="https://github.com/htw-imi-wtat1">GitHub</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=verpublish&status=init&vmfile=no&publishid=169610&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung">SU in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=verpublish&status=init&vmfile=no&publishid=169606&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung">Labs in LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&P.subc=plan&k_abstgv.abstgvnr=231&idcol=k_abstgv.abstgvnr&idval=231&r_zuordabstgv.semvonint=5&k_abstgv.dtxt=internationale&r_zuordabstgv.sembisint=6&purge=n&getglobal=n&text=Internationale+Medieninformatik+%28B%29%2C+Pr%C3%BCfungsOrdnung+20112">Semesterstundenplan im LSF</a>
    </div>
  </li>
</ul>
