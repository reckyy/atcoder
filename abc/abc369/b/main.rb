#!/usr/bin/env ruby
n = gets.to_i
l = []
r = []
n.times do
  x, y = gets.chomp.split
  x = x.to_i
  y == 'L' ? l << x : r << x
end
ans = 0
l.each_cons(2) { |a, b| ans += (a - b).abs }
r.each_cons(2) { |a, b| ans += (a - b).abs }
puts ans
