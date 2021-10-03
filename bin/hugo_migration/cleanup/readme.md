
# Detect unlinked sites:

- set  generatedLinks in config to false to prevent generation of prev next links
  which will

- build site with production setting (to avoid automated debugging sitemap etc)
   hugo -s hugo -e production

- run the script: . ./bin/hugo_migration/linkCheck.sh > bin/hugo_migration/cleanup/not_linked.log
