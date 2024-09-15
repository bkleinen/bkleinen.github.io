---
title: Hugo Cheatsheet
author: B. Kleinen
tools: ['hugo']
tags: ['markdown', 'hugo']
courses: []
draft: true
toc: true
---



## Shortcodes and Partials

- **Difference:**
Shortcodes can be included in Markdown, partials only in Layouts.
For reuse (usage of partials both in layout templates and directly from markdown)
a shortcode needs to be defined that references the partial.

- [Partial Templates | Hugo](https://gohugo.io/templates/partials/)
### Documentation
* [Shortcodes | Hugo](https://gohugo.io/content-management/shortcodes/)
* [Create Your Own Shortcodes | Hugo](https://gohugo.io/templates/shortcode-templates/)
### Shortcodes
Syntax: example:

  \{\{\<alert warning\>\}\}
      warning level alert
  \{\{\</alert\>\}\}


{{<alert warning>}}
    warning level alert
{{</alert>}}

--

#### Render Markdown

{{< hugoCheatSheet/render "." >}}

{{% hugoCheatSheet/render "." %}}

```

```

* Documentation [Shortcodes | Hugo](https://gohugo.io/content-management/shortcodes/)
* [Create Your Own Shortcodes | Hugo](https://gohugo.io/templates/shortcode-templates/)

#### Figures
[https://gohugo.io/content-management/shortcodes/#figure](https://gohugo.io/content-management/shortcodes/#figure)
{{< figure src="/images/classes/info2/crc-cards.jpg" caption="CRC Cards">}}



## GetPage

- getPage: {{% hugoCheatSheet/getPage  path = "/material/hugo/hugocheatsheet" %}}

## Aliases

{{% hugoCheatSheet/aliases "." %}}

Course link in spite of alias:
{{% hugoCheatSheet/getPage  path = "/info1" %}}
