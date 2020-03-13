
 <ul class="nav nav-tabs m-b-3">
 {% assign navitems = "M1--/classes/ss2020/m1-web/,Complete Schedule--/classes/ss2020/m1-web/complete-schedule/,WT Schedule--/classes/ss2020/m1-web/schedule/,Assignments--/classes/ss2020/m1-web/assignments/" | split: "," %}
 {% for navitem in navitems %}
   <li class="nav-item">
     {% assign n = navitem | split: "--" %}
     <a class="nav-link {% if page.url == n[1] %}active{% endif %}" href="{{ site.baseurl }}{{ n[1] }}">{{ n[0] }}</a>
   </li>
 {% endfor %}
 <li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">External Links</a>
     <div class="dropdown-menu">

       <a class="dropdown-item" href="https://lsf.htw-berlin.de/qisserver/rds?state=wsearchv&search=2&veranstaltung.veranstid=154266">LSF</a>
       <a class="dropdown-item" href="https://lsf.htw-berlin.de/qisserver/rds?state=wplan&act=stg&pool=stg&P.subc=plan&k_abstgv.abstgvnr=312&idcol=k_abstgv.abstgvnr&idval=312&r_zuordabstgv.semvonint=1&k_abstgv.dtxt=internationale&missing=allTerms&r_zuordabstgv.sembisint=1&purge=n&getglobal=n&text=Internationale+Medieninformatik+%28M%29%2C+PrüfungsOrdnung+20162">Term Schedule in LSF</a>
     </div>
   </li>
 </ul>
