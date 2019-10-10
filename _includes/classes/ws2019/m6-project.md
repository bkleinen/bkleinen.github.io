<ul class="nav nav-tabs">
{% assign navitems = "IN_VISIBLE:/classes/ws2019/m6-project/,Schedule:/classes/ws2019/m6-project/schedule/" | split: "," %}

{% comment %}
,Code:/classes/ws2019/m-wt1-webapplications/code/,Labs:/classes/ws2019/m-wt1-webapplications/labs/
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
      <a class="dropdown-item" target = "ex_link" href="https://lsf.htw-berlin.de/qisserver/rds?state=wwrite&write=info&par=old&add.154890=15&show=lehrender&asi=pwA1plZnksxM.NU02B8J">LSF</a>
      <a class="dropdown-item" target = "ex_link" href="#">Github</a>
    </div>
  </li>
</ul>
