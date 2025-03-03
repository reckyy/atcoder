#!/usr/bin/env ruby
w, a, b = gets.chomp.split.map(&:to_i)

if (b - a) > w
  puts "#{b - (a + w)}"
elsif (a - b) > w
  puts "#{a - (b + w)}"
else
  puts 0
end
