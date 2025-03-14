#!/usr/bin/env ruby
n = gets.to_i
total_l = 0
previous_minute = 0
n.times do
  t, v = gets.split.map(&:to_i)
  total_l = [0, total_l - (t - previous_minute)].max
  total_l += v
  previous_minute = t
end

puts total_l
