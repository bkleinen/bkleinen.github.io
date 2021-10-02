r = /<a .*href="([^"]*)".*>([^<]*)<\/a>/
rs = /<a .*href=".*<\/a>/


fn = "bin/hugo_migration/all_links.html"
s = File.open(fn).read


all = s.scan(rs)
matches = s.scan(r)

puts "all #{all.size}"
puts "matches #{matches.size}"

links  = matches = matches.map{ |m| m[0]}
puts links.inspect
#all = all.map{ |m| m[0]}


#rest = all - matches
#puts "rest #{rest.size}"
#puts rest.inspect
