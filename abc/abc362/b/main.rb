#!/usr/bin/env ruby
points = Array.new(3) { gets.split.map(&:to_i) }
length = []
points.combination(2) { |a, b| length << (a[0] - b[0]) ** 2 + (a[1] - b[1]) ** 2 }
length.sort!
puts length[0] + length[1] == length[2] ? 'Yes' : 'No'
