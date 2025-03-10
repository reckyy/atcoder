#!/usr/bin/env ruby
n = gets.to_i
s = gets.chomp.chars
ans = 0

s.each_cons(3) do |str|
  ans += 1 if str.join == 'ABC'
end

puts ans
