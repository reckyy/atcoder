#!/usr/bin/env ruby
s = gets.chars
t = gets.chars
count = 0
s.zip(t).each do |a, b|
  count += 1
  if a != b
    puts count
    exit
  end
end
puts 0
