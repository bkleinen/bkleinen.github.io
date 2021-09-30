
def get_defined_course_navs
  old_coursenav = File.open("_includes/coursenav.md").read
  r1 = /{% capture available %}([^{]*){% endcapture %}/
  m =  r1.match(old_coursenav)

  defined_coursenavs = m[1].gsub(" ","\n").split("\n")
  defined_coursenavs.delete("index.md.md")

  defined_coursenavs
end

def get_directly_included
  directly_included =["classes/ss2014/info2.md",
  "classes/ss2015/info2.md",
  "classes/ss2017/media-programming-rails.md",
  "classes/ss2017/info2.md",
  "classes/ws2014/info1.md",
  "classes/ws2014/webapplications.md",
  "classes/ws2014/info3.md"]
end

def get_all_course_navs
  get_defined_course_navs.push(*get_directly_included)
end
