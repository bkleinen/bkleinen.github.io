require 'date'
tue =start = Date.parse('2015-04-14')
last = Date.parse('2015-07-28')
fri = bstart = Date.parse('2015-04-10')
blast = Date.parse('2015-07-31')

begin
  puts fri.strftime('%a, %d %b %Y')
  puts tue.strftime('%a, %d %b %Y')
  fri += 7
  tue += 7
end while fri < blast

