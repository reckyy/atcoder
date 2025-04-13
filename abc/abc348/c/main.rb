#!/usr/bin/env ruby
n = gets.to_i
color_and_value = Hash.new(Float::INFINITY)
n.times do
  a, c = gets.split.map(&:to_i)
  color_and_value[c] = [color_and_value[c], a].min
end
puts color_and_value.values.max
