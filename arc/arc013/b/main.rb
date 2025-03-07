#!/usr/bin/env ruby
c = gets.chomp.to_i
min_lines = []
mid_lines = []
max_lines = []


c.times do
  x, y, z = gets.chomp.split.map(&:to_i).sort
  min_lines << x
  mid_lines << y
  max_lines << z
end

puts min_lines.max * (mid_lines.max * max_lines.max)
