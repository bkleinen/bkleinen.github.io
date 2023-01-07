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

#Date
#|1 | 14 | Mon 03/04/2023 |
#|  | 15 | Mon 10/04/2023 | Ostern
#|2 | 16 | Mon 17/04/2023 |
#|3 | 17 | Mon 24/04/2023 |
#|4 | 18 | Mon 01/05/2023 |
#|5 | 19 | Mon 08/05/2023 |
#|6 | 20 | Mon 15/05/2023 |
#|  | 21 | Mon 22/05/2023 | Vorlesungsfrei
#|  | 22 | Mon 29/05/2023 | Pfingsten
#|7 | 23 | Mon 05/06/2023 |
#|8 | 24 | Mon 12/06/2023 |
#|9 | 25 | Mon 19/06/2023 |
#|10 | 26 | Mon 26/06/2023 |
#|11 | 27 | Mon 03/07/2023 |
#|12 | 28 | Mon 10/07/2023 |
#|13 | 29 | Mon 17/07/2023 |
#|14 | 30 | Mon 24/07/2023 |
#
course_dates = CourseDates.new(
  first_day: Date.parse("05.04.2023"),
  day_diff: 1,
  two_lectures: true,
  step: 7
)
# 1. Prüfungszeitraum 17.07.2023 – 05.08.2023
# 2. Prüfungszeitraum (Wiederholungsprüfungen) 21.09.2023 – 07.10.2023
# Semesterdaten
semester_dates = SemesterDates.new(
semester_start: Date.parse("01.04.2023"),
semester_end: Date.parse("05.08.2023"),
holidays: {
  "07.04.2023" => "Ostern",
  "10.04.2023" => "Ostern",
  "18.05.2023" => "Himmelfahrt",
  "19.05.2023" => "Himmelfahrt",
  "22.05.2023" => "Vorlesungsfrei",
  "29.05.2023" => "Pfingsten",
  "04.08.2023" => "Showtime",
  },
reject_span:[]
)

CourseSchedule.new(
  course_dates: course_dates,
  semester_dates: semester_dates).generate
