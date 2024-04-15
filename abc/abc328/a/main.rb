#!/usr/bin/env ruby
n, x = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split(" ").map(&:to_i)
score = 0

s.each do |num|
  score += num if num <= x
end

puts score
