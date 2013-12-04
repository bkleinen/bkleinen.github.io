#!/usr/bin/env ruby
filename = ARGV[0]
MAX_COLUMNS = 10
DEBUG = false
unless filename
  puts "usage: format.rb <filename>"
  exit 1
end

def table_row?(line)
  line.match(/^\|/)
end

max_lengths = Array.new(MAX_COLUMNS,0)
table_width = 0
lines = []

File.open(filename).each do | line|
  if table_row?(line)
    fields = line.split("|").map(&:size)
    table_width = [fields.size,table_width].max
    max_lengths = max_lengths.zip(fields).map{ |a| (a[0].nil? || a[1].nil?) ?  0 : a.max }
  end
  lines << line.strip
end
max_lengths = max_lengths[0..table_width-1]
   puts "+++++++++++++++++++++++++++++++++#{table_width}+++++++++++++++++++++++++++++++++++++++++" if DEBUG

lines.each do | line |
  unless table_row?(line)
    puts line
  else
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++" if DEBUG
    fields = line.split("|")
    puts "+++++ LENGTH #{fields.size} +++++++" if DEBUG
    fields = max_lengths.zip(fields).map { |length, content | (content || "").ljust(length)}
    puts "+++++ LENGTH #{fields.size} +++++++" if DEBUG
    puts fields.inspect if DEBUG
    puts line if DEBUG
    puts fields.join("|")
    puts "++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++++" if DEBUG
  end
end


if (table_width > MAX_COLUMNS)
  puts "WARNING!"
  puts "MAX_COLUMNS was too small (#{MAX_COLUMNS}),"
  puts "table_width was #{table_width}"
end
