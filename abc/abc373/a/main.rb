#!/usr/bin/env ruby
ans = 0
(1..12).each do |i|
  s = gets.chomp.length
  ans += 1 if s == i
end
puts ans
