    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
        <title>{{ page.title }}</title>
        <meta name="viewport" content="width=device-width">

        <!-- syntax highlighting CSS -->
        <link rel="stylesheet" href="{{site.baseurl}}css/syntax.css">

        <!-- Custom CSS -->
        {% if page.wide_layout %}
        <link rel="stylesheet" href="{{site.baseurl}}css/main-schedule.css">
        {% else %}
        <link rel="stylesheet" href="{{site.baseurl}}css/main.css">
        {% endif %}
    </head>
