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
  m =  r2.match(coursenav)
  if m
    navitems = m[1]
    puts navitems
    menu = navitems.split(",").map do |n|
      splitter = n.include?("--") ? "--" : "-"
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
    menu = coursenav.scan(r3).map{|n| { "title" => n[1], "link" => n[2]} }
end

def extractNewFormat(coursenav)
  { "courseNavInt" => extractInt(coursenav),
    "courseNavExt" => extractExt(coursenav)}
end

def extractOldFormat(coursenav)
  r_internal_link = /\[([^\]]*)\]\({{ site.baseurl }}([^)]*)\)/
  r_external_link = /\[([^\]]*)\]\((http[^)]*)\)/

  internal = coursenav.scan(r_internal_link).map{|n| { "title" => n[0], "link" => n[1]} }
  external = coursenav.scan(r_external_link).map{|n| { "title" => n[0], "link" => n[1]} }

  {"courseNavInt" => internal, "courseNavExt" => external}
end

Dir.glob("classes/*/*/index.md")

# read the list of available coursenavigations from the old coursenav
old_coursenav = File.open("_includes/coursenav.md").read
r1 = /{% capture available %}([^{]*){% endcapture %}/
m =  r1.match(old_coursenav)

defined_coursenavs = m[1].gsub(" ","\n").split("\n")
defined_coursenavs.delete("index.md.md")

puts defined_coursenavs.inspect

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
  puts YAML.dump(extracted)

end
puts defined_coursenavs.join("% }\n{% include ")
