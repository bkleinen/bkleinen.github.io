---
title: Hugo Cheatsheet
author: B. Kleinen
tools: ['hugo']
tags: ['markdown']
courses: []
draft: true
toc: true
---



## Shortcodes and Partials

Shortcodes are for markdown content, partials for templates.

- [Partial Templates | Hugo](https://gohugo.io/templates/partials/)

### Shortcodes

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
