

ruby bin/hugo_migration/allInternalLinks.rb > allLinks.log

for f in $(find public -name "index.html" | sed -e "s#public/##g" -e "s+/index.html++g"); do
  # echo "-----$f"
  grep -q $f  allLinks.log
  if [ $? -ne 0 ]; then ;  echo "not linked: $f" ; fi
done
