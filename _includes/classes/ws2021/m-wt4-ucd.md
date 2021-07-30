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
      <a class="dropdown-item" target = "ex_link" href="https://moodle.htw-berlin.de/course/view.php?id=31140">Moodle</a>
      <a class="dropdown-item" target = "ex_link" href="https://wiki.htw-berlin.de/confluence/display/fb4crskleinen/M-WT4-UCD-SoSe2021">Wiki</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=verpublish&status=init&vmfile=no&publishid=169649&moduleCall=webInfo&publishConfFile=webInfo&publishSubDir=veranstaltung">LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&show=plan&P.vx=kurz&r_zuordabstgv.semvonint=2&r_zuordabstgv.sembisint=3&k_abstgv.abstgvnr=312">Semesterstundenplan im LSF</a>

    </div>
  </li>
</ul>
