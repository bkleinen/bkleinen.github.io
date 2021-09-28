require 'yaml'

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
  puts "-------------------------------------------"
  puts "coursenav_include: "+coursenav_include
  r2 = /{% assign navitems = \"([^ ]*)" | split: "," %}/
  m =  r2.match(coursenav)
  if m
    navitems = m[1]
    puts navitems
    menu = navitems.split(",")
    m
    Overview-/classes/ws2021/networks/,Schedule-/classes/ws2021/networks/schedule/,Resources-/classes/ws2021/networks/resources/,Labs-/classes/ws2021/networks/labs/
    puts YAML.dump("foo")

  else
    puts "----- no match found!"
    puts coursenav
  end


end
