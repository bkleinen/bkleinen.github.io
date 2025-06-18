#!ruby
# frozen_string_literal: true

require 'date'
require_relative './lib_ruby_dates.rb'

# Veranstaltungsdaten
# Info2
# course_dates = CourseDates.new(
#   first_day: Date.parse("30.9.2020"),
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
  first_day: Date.parse("01.10.2025"),
  day_diff: 5,
  two_lectures: false,
  step: 7
)
# 1. Prüfungszeitraum 17.07.2023 – 05.08.2023
# 2. Prüfungszeitraum (Wiederholungsprüfungen) 21.09.2023 – 07.10.2023
# Semesterdaten
semester_dates = SemesterDates.new(
semester_start: Date.parse("01.10.2025"),
semester_end: Date.parse("14.02.2026"),
holidays: {
  "03.10.2025" => "Feiertag",
  "22.12.2025" => "Vorlesungsfrei",
  "23.12.2025" => "Vorlesungsfrei",
  "24.12.2025" => "Vorlesungsfrei",
  "25.12.2025" => "Vorlesungsfrei",
  "26.12.2025" => "Vorlesungsfrei",
  "27.12.2025" => "Vorlesungsfrei",
  "28.12.2025" => "Vorlesungsfrei",
  "29.12.2025" => "Vorlesungsfrei",
  "30.12.2025" => "Vorlesungsfrei",
  "31.12.2025" => "Vorlesungsfrei",
  "01.01.2026" => "Feiertag",
  "02.01.2026" => "Schließtag im Vorlesungszeitraum",
  "03.01.2026" => "Schließtag im Vorlesungszeitraum",
  "13.02.2026" => "Showtime",
  },
reject_span:[]
)

CourseSchedule.new(
  course_dates: course_dates,
  semester_dates: semester_dates).generate
