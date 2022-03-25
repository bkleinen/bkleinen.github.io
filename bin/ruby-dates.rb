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
  first_day: Date.parse("08.04.2022"),
  day_diff: 1,
  two_lectures: false,
  step: 7
)

# Semesterdaten
semester_dates = SemesterDates.new(
semester_start: Date.parse("02.04.2022"),
semester_end: Date.parse("30.07.2022"),
holidays: {
  "15.04.2022" => "Ostern",
  "18.04.2022" => "Ostern",
  "26.05.2022" => "Himmelfahrt",
  "27.05.2022" => "Vorlesungsfrei",
  "06.06.2022" => "Pfingsten",
  "29.07.2022" => "Showtime",
  },
reject_span:[]
)

CourseSchedule.new(
  course_dates: course_dates,
  semester_dates: semester_dates).generate
