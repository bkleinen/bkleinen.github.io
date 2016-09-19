require 'date'
first_day=d=Date.new(2016,10,5)
day_diff=1

(1..20).to_a.collect{|i| [(d+(7*(i-1))).strftime("|#{i} | #{i+40} | %a, %Y-%m-%d |"),(d+(7*(i-1))+day_diff).strftime("|   |    | %a, %Y-%m-%d |") ] }.flatten.each{|x| puts x}
