---
title: page debugging site
author: kleinen
draft: false
params:
  math: true
  toc: true
---

This page has two parts - Markdown and html stuff 
starting [below](#debuglisthtml)
### Shortcodes

- [Shortcodes](https://gohugo.io/content-management/shortcodes/)

## Embedded Shortcodes

https://github.com/gohugoio/hugo/blob/master/tpl/tplimpl/embedded/templates/shortcodes/highlight.html

{{< highlight go >}} A bunch of code here {{< /highlight >}}
{{< highlight go >}} Stuff to `process` in the *center*. {{< /highlight >}}

{{% highlight go %}}Stuff to `process` in the *center*.{{% /highlight %}}

## My own Shortcodes

### Embed HTML in Markdown page (unsafe_html)
- unsafe_html with <>
  {{< unsafe_html  >}} <h5>I'm a header five</h5> {{< /unsafe_html >}}
- unsafe_html with %%:
  {{% unsafe_html  %}} <h5>I'm a header five</h5>  {{% /unsafe_html %}}

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



# Math

see https://gohugo.io/content-management/mathematics/

This is an inline \(a^*=x-b^*\) equation.
This is an inline $a^*=x-b^*$ equation.
$$a^*=x-b^*$$

These are block equations:

\[a^*=x-b^*\]

\[ a^*=x-b^* \]

\[
a^*=x-b^*
\]

These are block equations using alternate delimiters:

$$a^*=x-b^*$$

$$ a^*=x-b^* $$

$$
a^*=x-b^*
$$



\[
\begin{aligned}
KL(\hat{y} || y) &= \sum_{c=1}^{M}\hat{y}_c \log{\frac{\hat{y}_c}{y_c}} \\
JS(\hat{y} || y) &= \frac{1}{2}(KL(y||\frac{y+\hat{y}}{2}) + KL(\hat{y}||\frac{y+\hat{y}}{2}))
\end{aligned}
\]


---

# debug/list.html
