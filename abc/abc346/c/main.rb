#!/usr/bin/env ruby
n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
ans = (1..k).sum
a.uniq.each do |num|
  next if num > k
  ans -= num
end
puts ans
