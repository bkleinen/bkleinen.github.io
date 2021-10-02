SemesterDates = Struct.new(
  :semester_start,
  :semester_end,
  :holidays,
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
  :step,
  keyword_init: true
)

class CourseSchedule
  def initialize(course_dates:,semester_dates:)
    @course_dates = course_dates
    @semester_dates = semester_dates
  end


# DATEFORMAT='| %a, %Y-%m-%d |  I |'
FIRST__LINE='| %a %d/%m/%Y | '
SECOND_LINE='| %a %d/%m/%Y | '

def generate
  d = @course_dates.first_day
  puts "#{d.class}"
  week_count = 0
  (1..@semester_dates.weeks_available).to_a.each do |i|
    date = d + (@course_dates.step * (i - 1))
    # vlt rausnehmen? eignet sich nur für ganze wochen
    next if in_rejected?(date: date, semester_dates: @semester_dates)
    text_holiday = holiday(date: date, semester_dates: @semester_dates)
    if text_holiday === ""
      week_count += 1
      line_1 = "|#{week_count} | #{date.cweek} "
    else
      line_1 = "|  | #{date.cweek} "
    end
    line_1 += date.strftime(FIRST__LINE)
    line_1 += text_holiday
    puts line_1
    if @course_dates.two_lectures
      date_2 = date + @course_dates.day_diff
      line_2 = "|   |    "
      line_2 += (date_2).strftime(SECOND_LINE)
      line_2 += holiday(date: date_2, semester_dates: @semester_dates)
      puts line_2
    end
  end
end


  # helpers
  def in_rejected?(date:, semester_dates:)
    sd = semester_dates
    return false unless sd.reject_span.size > 0


    (sd.reject_span[0] <= date) && (date <= sd.reject_span[1])
  end
  # helpers
  def holiday(date:,semester_dates:)
  #  puts  semester_dates.holidays
    date_s = date.strftime("%d.%m.%Y")
    #puts "date: #{date_s}"
    #puts semester_dates.holidays
    return "" unless semester_dates.holidays.has_key? date_s
    semester_dates.holidays[date_s]
  end
end
