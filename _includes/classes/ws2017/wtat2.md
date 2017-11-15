
 <ul class="nav nav-tabs m-b-3">
 {% assign navitems = "WTAT2--/classes/ws2017/wtat2/,Schedule--/classes/ws2017/wtat2/schedule/,Topics--/classes/ws2017/wtat2/topics/" | split: "," %}
 {% for navitem in navitems %}
   <li class="nav-item">
     {% assign n = navitem | split: "--" %}
     <a class="nav-link {% if page.url == n[1] %}active{% endif %}" href="{{ site.baseurl }}{{ n[1] }}">{{ n[0] }}</a>
   </li>
 {% endfor %}


 <li class="nav-item dropdown">
     <a class="nav-link dropdown-toggle" data-toggle="dropdown" href="#" role="button" aria-haspopup="true" aria-expanded="false">External Links</a>
     <div class="dropdown-menu">

     <a class="dropdown-item" href="https://moodle.htw-berlin.de/course/view.php?id=14388">Moodle</a>
     <a class="dropdown-item" href="https://lsf.htw-berlin.de/qisserver/rds?state=wsearchv&search=2&veranstaltung.veranstid=131102">LSF SU</a>
     <a  lass="dropdown-item" href="https://lsf.htw-berlin.de/qisserver/rds?state=wsearchv&search=2&veranstaltung.veranstid=131108">LSF Übung</a>
     <a class="dropdown-item" href="https://github.com/htw-imi-wtat2">Github</a>
     </div>
   </li>
 </ul>
