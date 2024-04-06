#!/usr/bin/env ruby
n = gets.chomp.to_i
distances = {}
points = []
n.times do
  x, y = gets.chomp.split(' ').map(&:to_i)
  points << [x, y]
end

(n - 1).times do |i|
  a, b = gets.chomp.split(' ').map(&:to_i)
  distances[i + 1] = Math.sqrt((x - a) ** 2 + (y - b) ** 2)
end
p distances




