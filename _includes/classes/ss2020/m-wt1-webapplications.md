<ul class="nav nav-tabs">
{% assign navitems = "M-WT1:/classes/ss2020/m-wt1-webapplications/,Schedule:/classes/ss2020/m-wt1-webapplications/schedule/,Assignments:/classes/ss2020/m-wt1-webapplications/assignments/" | split: "," %}

{% comment %}
,Code:/classes/ss2020/m-wt1-webapplications/code/,Labs:/classes/ss2020/m-wt1-webapplications/labs/
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
      <a class="dropdown-item" target = "ex_link" href="https://moodle.htw-berlin.de/course/view.php?id=21906">Moodle</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wsearchv&search=2&veranstaltung.veranstid=154128">LSF</a>
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&show=plan&P.vx=kurz&r_zuordabstgv.semvonint=1&r_zuordabstgv.sembisint=4&k_abstgv.abstgvnr=312">Semesterstundenplan im LSF</a>
      <a class="dropdown-item" target = "ex_link" href="#">Github</a>
    </div>
  </li>
</ul>
