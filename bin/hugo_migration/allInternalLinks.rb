# run hugo -e staging -s hugo first

# usage: find missing files / internal broken links:
# for f in $(ruby bin/hugo_migration/allInternalLinks.rb); do ls hugo/public/$f/index.html; done 2> missing.log

# for f in $(ruby bin/hugo_migration/allInternalLinks.rb); do ls hugo/public/$f/index.html; done 2> missing.log > linked.log


SITE_DIR="hugo/public/"
HTMLFILE="index.html"

#BASEURL_SUBDIR ="staging/"
BASEURL_SUBDIR =""

search_for = "#{SITE_DIR}**/#{HTMLFILE}"
all_html_files = Dir.glob(search_for)

# filters out side anchor links

DEBUG = 0
puts "found #{all_html_files.size} html files" if DEBUG > 0



def internal_part(link,file_name)

    puts "--------- processing #{link} in #{file_name}" if DEBUG > 1

  #  r2 = /\Ahttps:\/\/bkleinen.github.io\/staging(.*)/
    r2 = /\Ahttps:\/\/bkleinen.github.io(.*)/
    m = r2.match(link)
    return remove_leading_slashes(m[1]), :internal if m

    r3 = /\Ahttps?:\/\/(.*)/
    m = r3.match(link)
    return link, :external if m

    return site_absolute(remove_base_subdir(link),file_name)
end

def remove_leading_slashes(link)
  link.gsub(/\A\/+/,"")
end
def remove_base_subdir(link)
  link.gsub("staging/","")
end

def site_absolute(link,file_name)
  leading_slash = /\A\/+/
  leading_hash = /\A#/
  if leading_slash.match(link)
    return remove_leading_slashes(link), :internal
  else
    # return nil if leading_hash.match(link)
    file_path = file_name.gsub(SITE_DIR,"").gsub(HTMLFILE,"")
    puts "rel #{link} in #{file_name} #{file_path}" if DEBUG > 3

    type = leading_hash.match(link) ? :anchor : :internal
    internal_link = File.join(file_path,link)

    type = :self if self_link(internal_link,file_name)
    puts "result: #{internal_link} type: #{type}" if DEBUG > 3

    return remove_dots(remove_one_ups(internal_link)), type
  end

end

def self_link(link,file_name)
  file_name_from_link = "#{SITE_DIR}#{BASEURL_SUBDIR}#{link}#{HTMLFILE}"
  puts "file_name_from_link: #{file_name_from_link}" if DEBUG > 3
  puts "file_name: #{file_name}"if DEBUG > 3
  file_name_from_link == file_name
#   --------- processing  in hugo/public/classes/ss2020/info2/labs/lab-08-chat/index.html
#   rel  in hugo/public/classes/ss2020/info2/labs/lab-08-chat/index.html classes/ss2020/info2/labs/lab-08-chat/
#   result: classes/ss2020/info2/labs/lab-08-chat/ type: internal
#   found: classes/ss2020/info2/labs/lab-08-chat/
end

def remove_one_ups(link)
  up = /\/[^.^\/]*\/\.\./
  return link unless up.match(link)
  new_link = link
  while up.match(new_link)
     new_link = new_link.gsub(up,"")
  end
  puts "-----remove_one_ups: ------" if DEBUG >0
  puts link if DEBUG > 0
  puts new_link if DEBUG > 0
  new_link
end

def remove_dots(link)
  link.gsub(/\/\./,"")
end

def remove_trailing_slash(link)
  puts "found: #{link}" if /\/\z/.match(link) if DEBUG > 0
  link.gsub(/\/\z/,"")
end

r1 = /href="([^"]*)"/m

require 'set'

all_links = { internal: Set[], external: Set[], anchor: Set[], self: Set[] }

leading_hash = /\A#/

all_html_files.each do | file_name |
  contents = File.open(file_name).read

  local_links = contents.scan(r1).map do |m|
    link, type = internal_part(m[0],file_name)
    link = remove_trailing_slash(link)
    # puts "type: #{type}, #{type.class}"
    # puts all_links.inspect
    puts "result: #{link} type: #{type}" if DEBUG > 0
    all_links[type].add(link)

  end
  # all_links = all_links.union(local_links)
  # puts "local_links: #{local_links}"

end
all_internal_links = all_links[:internal].to_a.sort.join("\n")
puts "#{all_internal_links}"
