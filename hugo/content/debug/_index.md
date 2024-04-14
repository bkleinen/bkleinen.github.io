---
title: page debugging site
author: kleinen
draft: false
---

### Shortcodes

- [Shortcodes](https://gohugo.io/content-management/shortcodes/)

## Embedded Shortcodes

https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/shortcodes/highlight.html

{{< highlight go >}} A bunch of code here {{< /highlight >}}
{{< highlight go >}} Stuff to `process` in the *center*. {{< /highlight >}}

{{% highlight go %}}Stuff to `process` in the *center*.{{% /highlight %}}

## My own Shortcodes

##### alerts (or shortcodes in general) with rendered md

[Emcke, Carolin. Gegen den Hass](https://www.fischerverlage.de/buch/carolin-emcke-gegen-den-hass-9783596296873)


#### prev_next

{{<prev_next >}}

#### link
- {{% link title ="Schedule" link = "schedule" %}}
- {{% link title ="Schedule" link = "schedule" nyp = true %}}
- {{% link title ="Schedule" link = "schedule" nyp = "own not published note" %}}

#### alerts

{{<alert primary>}}
    Primary
{{</alert>}}


{{<alert light>}}
    Light
{{</alert>}}
   

{{<alert light>}}
    Shortcode without markdown:

    # huhu

    {{</alert>}}

{{% alert light %}}
    [Emcke, Carolin. Gegen den Hass](https://www.fischerverlage.de/buch/carolin-emcke-gegen-den-hass-9783596296873)
{{%/alert %}}

{{<alert info>}}
Info
{{</alert>}}

{{<alert success>}}
    Success
{{</alert>}}

{{<alert warning>}}
    Warning
{{</alert>}}

{{<alert danger>}}
    Danger
{{</alert>}}

{{<alert dark>}}
    Dark
{{</alert>}}

