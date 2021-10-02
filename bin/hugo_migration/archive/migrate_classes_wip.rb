require 'yaml'

def remove_comments(coursenav)
  # puts "----------------"
  # puts coursenav
  # puts "----------------"
  rc = /{% comment %}(.*){% endcomment %}/m
  result = coursenav.gsub(rc,"")
  if false && m = rc.match(coursenav)
    puts "---removed comment!"
    puts m[1]
    puts "--------------"

  end
  return result
end
def extractInt(coursenav)

  #r2 = /{% assign navitems = \"([^ ]*)" | split: "," %}/
  r2 = /{% assign navitems = \"([^"]*)" | split: "," %}/
  r_splitter = /{% assign n = navitem \| split: "(.*)" %}/
  m =  r2.match(coursenav)
  if m
    navitems = m[1]
    puts navitems
    splitter = r_splitter.match(coursenav)[1]
    puts "splitter: #{splitter}"
    menu = navitems.split(",").map do |n|
      n = n.split(splitter)
      { "title" => n[0], "link" => n[1]}
    end
  else
    puts "----- no match found!"
    puts coursenav
    {}
  end
end

def extractExt(coursenav)
    # r3 = /<a class="dropdown-item" target = "ex_link" href="([^"]*)">(.*)<\/a>/
    # menu = coursenav.scan(r3).map{|n| { "title" => n[0], "link" => n[1]} }
    r3 = /<a class="dropdown-item"( target = "ex_link")? href="([^"]*)">(.*)<\/a>/
    menu = coursenav.scan(r3).map{|n| { "title" => n[2], "link" => n[1]} }
end

def extractNewFormat(coursenav)
  { "courseNavInt" => extractInt(coursenav),
    "courseNavExt" => extractExt(coursenav)}
end

def extractOldFormat(coursenav)
  r_internal_link = /\[([^\]]*)\]\({{ site.baseurl }}([^)]*)\)/
  r_external_link = /\[([^\]]*)\]\((http[^)]*)\)/
  # bei scan ist 0 die erste gruppe...
  internal = coursenav.scan(r_internal_link).map{|n| { "title" => n[0], "link" => n[1]} }
  external = coursenav.scan(r_external_link).map{|n| { "title" => n[0], "link" => n[1]} }

  r_internal_link_html = /href="{{ site.baseurl }}([^"]*)"[^>]*>([^<]*)<\/a>/
  internal_html = coursenav.scan(r_internal_link_html).map{|n| { "title" => n[1], "link" => n[0]} }

  r_external_link_html = /href="(http[^"]*)"[^>]*>([^<]*)<\/a>/
  external_html = coursenav.scan(r_external_link_html).map{|n| { "title" => n[1], "link" => n[0]} }

  internal = internal.push(*internal_html)
  external = external.push(*external_html)

  {"courseNavInt" => internal, "courseNavExt" => external}
end

def check()
  r = /<a .*href="([^"]*)".*>([^<]*)<\/a>/
  rs = /<a .*href=".*<\/a>/

  fn = "bin/hugo_migration/all_links.html"
  s = File.open(fn).read

  all = s.scan(rs)
  matches = s.scan(r)
  diff = all.size - matches.size
  puts "WARNING!!!!! the check against a simpler RE showed that #{diff} matches were not found!" unless diff == 0

  links  = matches = matches.map{ |m| m[0]}
end




require_relative './defined_course_navs.rb'

defined_coursenavs = get_all_course_navs
puts get_all_course_navs


# puts defined_coursenavs.inspect
all_refs = []
count = 0
defined_coursenavs.each do | coursenav_include |
  coursenav = File.open("_includes/"+coursenav_include).read
  coursenav = remove_comments(coursenav)
  # decide if old or new format
  r2 = /{% assign navitems = \"([^ ]*)" | split: "," %}/
  format = r2.match(coursenav) ? :new : :old
  puts "-------------------------------------------"
  puts "coursenav_include: "+coursenav_include
  puts "format: #{format}"
  extracted = (format == :old) ? extractOldFormat(coursenav) : extractNewFormat(coursenav)
  puts "extracted: #{extracted}"
  i = extracted["courseNavInt"].map{|h| h["link"] }
  e = extracted["courseNavExt"].map{|h| h["link"] }
  puts "i: #{i}"
    puts "e: #{e}"
  all_refs.push *i
  all_refs.push *e
  # puts "all_refs: #{all_refs.size}"
  result =  YAML.dump(extracted)
  puts result
  count = count + result.scan(/- title:/).size
end
  #all_links_from_check = check()
  # puts "---------------- --------------------------------------------------"
  # puts "---------------- --------------------------------------------------"
  # puts "---------------- --------------------------------------------------"
  # puts "found links: #{all_refs.size}"
  # puts "count: #{count}"
  # puts "check: #{all_links_from_check.size}"

  # all_refs = all_refs.compact.map{|s| s.chomp("/")}
  # all_links_from_check = all_links_from_check.compact.map{|s| s.chomp("/")}
  # missing = all_links_from_check.difference(all_refs)

  # puts "found links: #{all_refs.size}"
  # puts "check: #{all_links_from_check.size}"
  # puts "check uniq: #{all_links_from_check.uniq.size}"
  # puts "---------------- --------------------------------------------------"
  # puts "---------------- --------------------------------------------------"
  # puts "---------------- --------------------------------------------------"
#
  # puts "missing: #{missing.size}"
  # puts missing
  # puts all_refs
# puts defined_coursenavs.join("% }\n{% include ")


# puts "----------------  all_refs  -------------------------"
# puts all_refs
#
# puts "----------------  all_links_from_check  -------------------------"
# puts all_links_from_check
