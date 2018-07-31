require 'date'

first_day=d=Date.new(2018,10,05)
reject = Date.new(2018,12,28)
day_diff=0
two_days = true


def two_sameday(first_day,day_diff=0)
  d = first_day
  cw = first_day.strftime('%U').to_i
  (1..20).to_a.each do |i|
    date = d+(7*(i-1))
    line_1 = date.strftime("|#{i} | #{i+cw-1} | %a, %Y-%m-%d |  I |")
  #  line_2 = (date+day_diff).strftime("|   |    | %a, %Y-%m-%d II |")
    line_2 = (date+day_diff).strftime("|   |    |             |II |")
    puts line_1
    puts line_2
  end
end
def twodays(first_day,day_diff=1)
  d = first_day
  cw = first_day.strftime('%U').to_i
  (1..20).to_a.collect{|i| [(d+(7*(i-1))).strftime("|#{i} | #{i+cw-1} | %a, %Y-%m-%d |"),(d+(7*(i-1))+day_diff).strftime("|   |    | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}
end
def oneday(first_day)
  d = first_day
  cw = first_day.strftime('%U').to_i
  (1..20).to_a.collect{|i| (d+(7*(i-1))).strftime("|#{i} | #{i+cw-1} | %a, %Y-%m-%d |")  }.flatten.each{|x| puts x}
end

#oneday(first_day)

# info2
# first_day=d=Date.new(2017,4,4)


#if two_days
#twodays(first_day,day_diff)
#else
#oneday(first_day)
#end
# .reject{|n| n == 6}
two_sameday(first_day)
