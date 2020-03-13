SemesterDates = Struct.new(
  :semester_start,
  :semester_end,
  :reject_singles,
  :reject_span,
  keyword_init: true) do
    def weeks_available
      ((semester_end - semester_start)/7).ceil + 1
    end
  end


CourseDates = Struct.new(
  :first_day,
  :day_diff,
  :two_lectures,
  keyword_init: true
)

class CourseSchedule
  def initialize(course_dates:,semester_dates:)
    @course_dates = course_dates
    @semester_dates = semester_dates
  end


# DATEFORMAT='| %a, %Y-%m-%d |  I |'
FIRST__LINE='| %a %d/%m/%Y |   |'
SECOND_LINE='| %a %d/%m/%Y |   |'

def generate
  d = @course_dates.first_day
  puts "#{d.class}"
  week_count = 0
  (1..@semester_dates.weeks_available).to_a.each do |i|
    date = d + (7 * (i - 1))
    next if in_rejected?(date: date)
    week_count += 1
    line_1 = "|#{week_count} | #{date.cweek} "
    line_1 += date.strftime(DATEFORMAT)
    puts line_1
    if @course_dates.two_lectures
      line_2 = "| | "
      line_2 += (date + @course_dates.day_diff).strftime(SECOND_LINE)
      puts line_2
    end
  end
end


  # helpers
  def in_rejected?(date:)
    if reject_span.size > 0
      if (reject_span[0] <= date) && (date <= reject_span[1])
        return true
      end
    end
    reject_singles.include? date
  end
end
