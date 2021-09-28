require 'yaml'

def extractInt(coursenav)

  r2 = /{% assign navitems = \"([^ ]*)" | split: "," %}/
  m =  r2.match(coursenav)
  if m
    navitems = m[1]
    puts navitems
    menu = navitems.split(",").map{|n| n = n.split("-") ; { "title" => n[0], "link" => n[1]} }
  else
    puts "----- no match found!"
    puts coursenav
    {}
  end
end

def extractExt(coursenav)

    r3 = /<a class="dropdown-item" target = "ex_link" href="([^"]*)">(.*)<\/a>/
    menu = coursenav.scan(r3).map{|n| { "title" => n[0], "link" => n[1]} }
    {}
end

def extractNewFormat(coursenav)
  {}
end

def extractOldFormat(coursenav)
  r4 = /\({{ site.baseurl }}(.*)\)/
  {}
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
  # decide if old or new format
  r2 = /{% assign navitems = \"([^ ]*)" | split: "," %}/
  format = r2.match(coursenav) ? :new : :old
  puts "-------------------------------------------"
  puts "coursenav_include: "+coursenav_include
  puts "format: #{format}"
  extracted = (format == :old) ? extractOldFormat(coursenav) : extractNewFormat(coursenav)
  puts YAML.dump(extracted)


end
