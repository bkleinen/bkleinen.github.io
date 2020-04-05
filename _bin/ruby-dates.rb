# frozen_string_literal: true

require 'date'
require_relative './lib_ruby_dates.rb'

# Veranstaltungsdaten
# Info2
# course_dates = CourseDates.new(
#   first_day: Date.parse("31.3.2020"),
#   day_diff: 2,
#   two_lectures: true
# )
# WT4
course_dates = CourseDates.new(
  first_day: Date.parse("31.3.2020"),
  day_diff: 2,
  two_lectures: false
)

# Semesterdaten
semester_dates = SemesterDates.new(
semester_start: Date.parse("1.4.2020"),
semester_end: Date.parse("18.07.2020"),
holidays: {"11.04.2020" => "Karfreitag",
  "13.04.2020" => "Ostermontag",
  "21.05.2020" => "Himmelfahrt",
  "22.05.2020" => "Brückentag nach Himmelfahrt"},
reject_span:[]
)

CourseSchedule.new(
  course_dates: course_dates,
  semester_dates: semester_dates).generate
