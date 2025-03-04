#!/usr/bin/env ruby
n = gets.chomp.to_i
ans = 0

n.times do
  a, b = gets.chomp.split.map(&:to_i)
  ans += (a..b).sum
end

puts ans
