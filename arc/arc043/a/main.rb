#!/usr/bin/env ruby
# give up
n, a, b = gets.chomp.split.map(&:to_i)
s = []
n.times { s << gets.chomp.to_i }
r = s.max - s.min
avg = s.sum / s.count.to_f

if r == 0
  puts -1
else
  p = b / r.to_f
  q = a - (avg * p)
  puts format("%.10f %.10f", p, q)
end
