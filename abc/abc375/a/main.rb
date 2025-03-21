#!/usr/bin/env ruby
n = gets.to_i
s = gets.chomp.split('')
ans = 0
s.each_cons(3) do |a, b, c|
  ans += 1 if (a == '#') && (c == '#') && (b == '.')
end
puts ans
