



require_relative './lib/defined_course_navs.rb'
require_relative './lib/generate_course_navigation_front_matter.rb'

defined_coursenavs = get_all_course_navs

defined_coursenavs.each do | coursenav_include |

  puts "------------------------------#{coursenav_include}-----"
  puts generate_course_navigation(coursenav_include)
end
