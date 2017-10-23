    <head>
        <title>{{ page.title }}</title>

        <!-- Bootstrap Required meta tags -->
        <meta charset="{{ site.serverencoding }}">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css" integrity="sha384-PsH8R72JQ3SOdhVi3uxftmaW6Vc51MKb0q5P2rRUpPvrszuE4W1povHYgTpBfshb" crossorigin="anonymous">

        <!-- syntax highlighting CSS -->
        <link rel="stylesheet" href="{{ site.baseurl }}/css/syntax.css">
        {% if page.wide_layout %}
              <link rel="stylesheet" href="{{ site.baseurl }}/css/wide.css">
        {% else %}
        <link rel="stylesheet" href="{{ site.baseurl }}/css/responsive.css">
        {% endif %}
    </head>
