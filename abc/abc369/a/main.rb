#!/usr/bin/env ruby
a, b = gets.split.map(&:to_i)
if a == b
  puts 1
else
  puts (a - b).abs.even? ? 3 : 2
end
