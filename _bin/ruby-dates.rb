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
  first_day: Date.parse("9.10.2020"),
  day_diff: 2,
  two_lectures: false
)

# Semesterdaten
semester_dates = SemesterDates.new(
semester_start: Date.parse("1.10.2020"),
semester_end: Date.parse("13.02.2021"),
holidays: {
  "21.12.2020" => "Vorlesungsfrei",
  "22.12.2020" => "Vorlesungsfrei",
  "23.12.2020" => "Vorlesungsfrei",
  "24.12.2020" => "Vorlesungsfrei",
  "25.12.2020" => "Vorlesungsfrei",
  "26.12.2020" => "Vorlesungsfrei",
  "27.12.2020" => "Vorlesungsfrei",
  "28.12.2020" => "Vorlesungsfrei",
  "29.12.2020" => "Vorlesungsfrei",
  "30.12.2020" => "Vorlesungsfrei",
  "31.12.2020" => "Vorlesungsfrei",
  "01.01.2021" => "Vorlesungsfrei",
  "02.01.2021" => "Vorlesungsfrei"},
reject_span:[]
)

CourseSchedule.new(
  course_dates: course_dates,
  semester_dates: semester_dates).generate
