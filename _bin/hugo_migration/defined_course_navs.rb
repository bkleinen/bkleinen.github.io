
def get_defined_course_navs
  old_coursenav = File.open("_includes/coursenav.md").read
  r1 = /{% capture available %}([^{]*){% endcapture %}/
  m =  r1.match(old_coursenav)

  defined_coursenavs = m[1].gsub(" ","\n").split("\n")
  defined_coursenavs.delete("index.md.md")

  defined_coursenavs
end
