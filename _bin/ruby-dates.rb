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
  first_day: Date.parse("07.04.2021"),
  day_diff: 2,
  two_lectures: false,
  step: 7
)

# Semesterdaten
semester_dates = SemesterDates.new(
semester_start: Date.parse("1.04.2021"),
semester_end: Date.parse("17.07.2021"),
holidays: {
    "01.04.2021" => "Vorlesungsfrei",
      "02.04.2021" => "Vorlesungsfrei",
        "03.04.2021" => "Vorlesungsfrei",
          "04.04.2021" => "Vorlesungsfrei",
            "05.04.2021" => "Vorlesungsfrei",
  "14.05.2021" => "Vorlesungsfrei",
  "15.05.2021" => "Vorlesungsfrei"},
reject_span:[]
)

CourseSchedule.new(
  course_dates: course_dates,
  semester_dates: semester_dates).generate
