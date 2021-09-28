
require_relative './defined_course_navs.rb'



defined_coursenavs = get_defined_course_navs

cn = Dir.glob("_includes/classes/*/*.md").reject{ |n| /lectures.md/.match(n) }.map{|s| s.gsub("_includes/","") }

missing = cn.difference(defined_coursenavs)
puts "----- missing: "
puts missing

count = 0
defined_coursenavs.each do | coursenav_include |
  # coursenav_include = "classes/ws2015/info1.md"
  index_file_name = coursenav_include.gsub(".md","/index.md")
  puts "================== #{index_file_name}"
  next unless File.file?(index_file_name)
  index_file = File.open(index_file_name).read
  frontmatter_re = /\A---\n(.*)---\n/m
  frontmatter = frontmatter_re.match(index_file)[1]
  puts frontmatter
  count = count + 1
end

puts "defined_coursenavs: #{defined_coursenavs.size}"
puts "generated: #{count}"
