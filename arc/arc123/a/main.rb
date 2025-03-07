#!/usr/bin/env ruby
# giveup
a, b, c = gets.chomp.split.map(&:to_i)
x = 2 * b - a - c

if x.positive?
  puts x
elsif x.negative?
  puts x.even? ? (x / 2).abs : ((x / 2).abs + 1)
else
  puts 0
end
