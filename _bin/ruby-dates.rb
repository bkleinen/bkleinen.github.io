require 'date'
<<<<<<< HEAD
first_day=d=Date.new(2017,04,20)
=======
first_day=d=Date.new(2017,4,4)
day_diff=3
>>>>>>> info2 schedule in progress

def twodays(first_day,day_diff=1)
  d = first_day
  (1..20).to_a.collect{|i| [(d+(7*(i-1))).strftime("|#{i} | #{i+40} | %a, %Y-%m-%d |"),(d+(7*(i-1))+day_diff).strftime("|   |    | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}
end
def oneday(first_day)
  d = first_day
  (1..20).to_a.collect{|i| (d+(7*(i-1))).strftime("|#{i} | #{i+40} | %a, %Y-%m-%d |")  }.flatten.each{|x| puts x}
end

#oneday(first_day)
twodays(first_day,day_diff)
