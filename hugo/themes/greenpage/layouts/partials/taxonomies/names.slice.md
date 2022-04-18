{{ $taxonomy_names := slice }}
{{ range $taxonomy, $taxonomy_term_pages_map := .Site.Taxonomies }}
   {{ $taxonomy_names = append $taxonomy $taxonomy_names }}
{{ end }}
{{ return $taxonomy_names }}
