#!/usr/bin/env ruby
n, c1, c2 = gets.split
s = gets.chomp.split('')

s.map! do |str|
  str = (str != c1) ? c2 : str
end

puts s.join
