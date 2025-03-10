#!/usr/bin/env ruby
s = gets.chomp.chars
count = 0
max = 0

s.each do |str|
  case str
  when 'A', 'C', 'G', 'T'
    count += 1
    max = count if count > max
  else
    count = 0
  end
end

puts max
