#!/usr/bin/env ruby
n = gets.to_i
towns = Array.new(n) { gets.split.map(&:to_i) }

distance_list = []
rotation_list = towns.permutation.to_a

rotation_list.each do |r|
  distance = 0.0
  (n - 1).times do |j|
    x1, y1 = r[j]
    x2, y2 = r[j + 1]
    distance += Math.sqrt((x1 - x2) ** 2 + (y1 - y2) ** 2)
  end
  distance_list << distance
end

puts (distance_list.sum / distance_list.length).round(10)
