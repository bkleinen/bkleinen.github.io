---
title: "Code Highlighting"
date: 2021-10-23T08:44:57+02:00
draft: false
weight: 0
tags: ['hugo']
courses: []
languages: []
NoStripedTables: true
---

## Syntax Highlighting Tryout

Notes:
- switch off javascript that adds bootstrap styles to tables in frontmatter:
`NoStripedTables: true`
- many styles available, they can either be set in config (see markup.toml) or
  with the setting `noClasses=false` via stylesheets. see `syntax-xxx.scss`

- [Hugo Doc](https://gohugo.io/content-management/syntax-highlighting/)
- Chroma Styles:
    - [Chroma Style Gallery](https://xyproto.github.io/splash/docs/all.html)
    - [Longer](https://xyproto.github.io/splash/docs/longer/all.html)

### Example from page:

```go {linenos=table,hl_lines=[1,"15-17"],linenostart=199}
// ... code
```


---
### Without anything

```
$ ls -lart

```
---

### Bash

```bash {linenos=table,linenostart=199}
$ ls -lart

some output
```

```shell {linenos=table,linenostart=199}
# ls -lart
asdffs
```

###

style = 'monokai'

### Java with highlight shortcode

{{< highlight java "linenos=table,hl_lines=3 15-17,linenostart=199" >}}
public class XY {

  public static void main(String[] args){

  }
}
{{< / highlight >}}

### Java with code fences

```java {linenos=table,hl_lines=[3,"15-17"],linenostart=199}
public class XY {

  public static void main(String[] args){

  }
}
```

### Java with explicit style - does not work
Tried both settings for `noClasses=true|false`

```java {linenos=table,hl_lines=[3,"15-17"],linenostart=199,style=solarized-dark}
public class XY {

  public static void main(String[] args){

  }
}
```

---

### Python

```python
def cy:
  print "hallo"

```
