
require_relative './lib/defined_course_navs.rb'
require_relative './lib/generate_course_navigation_front_matter.rb'


defined_coursenavs = get_all_course_navs

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
  frontmatter_re = /\A-+\n(.*)\n-+\n/m
  frontmatter = frontmatter_re.match(index_file)[1]
  puts frontmatter
  former_frontmatter = YAML.load(frontmatter)

  course_menu = generate_course_navigation(coursenav_include)
  new_frontmatter = former_frontmatter.merge(course_menu)
  new_frontmatter_yaml =  YAML.dump(new_frontmatter)
  puts "========="
  new_frontmatter = new_frontmatter_yaml+"---\n"
  puts new_frontmatter_yaml
  index_file = index_file.gsub(frontmatter_re,new_frontmatter)

  # puts index_file
  puts "=================="
  count = count + 1

  File.write(index_file_name, index_file)

  section_index_file_name = index_file_name.gsub("/index.md","/_index.md")
  command = "git mv #{index_file_name} #{section_index_file_name}"
  system(command)
end

puts "defined_coursenavs: #{defined_coursenavs.size}"
puts "generated: #{count}"
