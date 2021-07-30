
<ul class="nav flex-md-column">

<li class="nav-item">
  {% include navigation_nav_link.md url_element = "classes"  link_text = "Classes" %}

  <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
    {% include navigation_dropdown_item.md url = "/classes/ss2021/info1" link_text = "B Info 1" %}
    {% include navigation_dropdown_item.md url = "/classes/ss2021/wtat1" link_text = "B WTAT 1" %}
    {% include navigation_dropdown_item.md url = "/classes/ss2021/m1-web" link_text = "M M1 Labs" %}
    {% include navigation_dropdown_item.md url = "/classes/ss2021/m-wt4-ucd" link_text = "M WT4 UCD" %}
    {% include navigation_dropdown_item.md url = "/classes/ss2021/index.html" link_text = "All SoSe 21" %}
    {% include navigation_dropdown_item.md url = "/classes/" link_text = "All Classes" %}
  </div>
</li>

  <li class="nav-item">
    <a class="nav-link {% if page.url == '/contact/' %}active{% endif %}" href="{{ site.baseurl }}/contact/">Contact Info</a>
  </li>


  <li class="nav-item">
    {% include navigation_nav_link.md url_element = "studies"  link_text = "Studies" %}

    <div class="dropdown-menu" aria-labelledby="dropdownMenuLink">
      {% include navigation_dropdown_item.md url = "/studies/thesis/" link_text = "Thesis" %}
      {% include navigation_dropdown_item.md url = "/studies/ic/" link_text = "IC" %}
      {% include navigation_dropdown_item.md url = "/studies/grading/" link_text = "Grading Info" %}
    </div>
  </li>


  <li class="nav-item">
    <a class="nav-link {% if page.url == '/software_projects/' %}active{% endif %}" href="{{ site.baseurl }}/software_projects/">Software Projects</a>
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
