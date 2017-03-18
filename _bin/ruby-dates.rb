require 'date'
first_day=d=Date.new(2017,04,20)

def twodays(first_day)
  d = first_day
  day_diff=1
  (1..20).to_a.collect{|i| [(d+(7*(i-1))).strftime("|#{i} | #{i+40} | %a, %Y-%m-%d |"),(d+(7*(i-1))+day_diff).strftime("|   |    | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}
end
def oneday(first_day)
  d = first_day
  (1..20).to_a.collect{|i| (d+(7*(i-1))).strftime("|#{i} | #{i+40} | %a, %Y-%m-%d |")  }.flatten.each{|x| puts x}
end

oneday(first_day)
