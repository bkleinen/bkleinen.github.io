    <head>
        <title>{{ page.title }}</title>

        <!-- Bootstrap Required meta tags -->
        <meta charset="{{ site.serverencoding }}">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="{{ site.baseurl }}/bootstrap/bootstrap.min.css" >

        <!-- syntax highlighting CSS -->
        <link rel="stylesheet" href="{{ site.baseurl }}/css/syntax.css">
        {% if page.wide_layout %}
              <link rel="stylesheet" href="{{ site.baseurl }}/css/wide.css">
        {% else %}
        <link rel="stylesheet" href="{{ site.baseurl }}/css/responsive.css">
        {% endif %}
    </head>
