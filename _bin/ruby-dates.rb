require 'date'

first_day=d=Date.new(2018,04,30)
reject = Date.new(2018,05,10)
day_diff=3
two_days = false


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
if two_days
twodays(first_day,3)
else
oneday(first_day)
end
# .reject{|n| n == 6}
