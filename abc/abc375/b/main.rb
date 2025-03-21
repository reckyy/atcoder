#!/usr/bin/env ruby
n = gets.to_i
xy = Array.new(n) { gets.split.map(&:to_i) }
cost = 0
from = [0, 0]
xy.each do |x, y|
  cost += Math.sqrt((x - from[0]) ** 2 + (y - from[1]) ** 2)
  from = [x, y]
end
cost += Math.sqrt(from[0] ** 2 + from[1] ** 2)
puts cost
