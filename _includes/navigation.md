
<ul class="nav flex-md-column">

<li class="nav-item">
  {% include navigation_nav_link.md url_element = "classes"  link_text = "Classes" %}

  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    {% include navigation_dropdown_item.md url = "/classes/ws2020/info3" link_text = "Info 3" %}
        {% comment %}
    {% include navigation_dropdown_item.md url = "/classes/ss2020/wtat1" link_text = "WTAT1 Agile Web Dev" %}
    {% include navigation_dropdown_item.md url = "/classes/ss2020/project" link_text = "Project" %}
    {% include navigation_dropdown_item.md url = "/classes/ss2020/bachelorseminar" link_text = "Bachelorseminar" %}
    {% include navigation_dropdown_item.md url = "/classes/ss2020/m1-web" link_text = "M1 Mediaprogramming" %}
  {% include navigation_dropdown_item.md url = "/classes/ss2020/m-wt4-ucd" link_text = "M WT4 UCD" %}



    {% include navigation_dropdown_item.md url = "/classes/ss2020/m6-project" link_text = "Project" %}
        {% endcomment %}
    {% include navigation_dropdown_item.md url = "/classes/" link_text = "All Classes" %}
  </div>
</li>

  <li class="nav-item">
    <a class="nav-link {% if page.url == '/contact/' %}active{% endif %}" href="{{ site.baseurl }}/contact/">Contact Info</a>
  </li>


  <li class="nav-item">
    {% include navigation_nav_link.md url_element = "studies"  link_text = "Studies" %}

    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      {% include navigation_dropdown_item.md url = "/studies/auslandspraktikum/" link_text = "Praktikum" %}
      {% include navigation_dropdown_item.md url = "/studies/bafoeg/"             link_text = "Baf&ouml;g" %}
      {% include navigation_dropdown_item.md url = "/studies/thesis/" link_text = "Thesis" %}
      {% include navigation_dropdown_item.md url = "/studies/grading/" link_text = "Grading Info" %}
    </div>
  </li>

  <li class="nav-item">
    {% include navigation_nav_link.md url_element = "projects"  link_text = "Projects" %}

    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      {% include navigation_dropdown_item.md url = "/projects/module-handbook/" link_text = "Module Handbook" %}
          </div>
  </li>

  <li class="nav-item">
    {% include navigation_nav_link.md url_element = "misc"  link_text = "Misc" %}

    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      {% include navigation_dropdown_item.md url = "/misc/about-this-site/" link_text = "About this Site" %}
      {% include navigation_dropdown_item.md url = "/misc/trans/" link_text = "Trans*" %}
      {% include navigation_dropdown_item.md url = "/misc/lsfcollector/" link_text = "LSF" %}
      {% include navigation_dropdown_item.md url = "/misc/links/" link_text = "Links" %}
    </div>
  </li>
<ul>
