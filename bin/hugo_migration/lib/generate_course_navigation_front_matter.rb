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


def generate_course_navigation(coursenav_include)

  coursenav = File.open("_includes/"+coursenav_include).read
  coursenav = remove_comments(coursenav)
  # decide if old or new format
  r2 = /{% assign navitems = \"([^ ]*)" | split: "," %}/
  format = r2.match(coursenav) ? :new : :old
  extracted = (format == :old) ? extractOldFormat(coursenav) : extractNewFormat(coursenav)

end
