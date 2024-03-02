#!/usr/bin/env ruby
a, b = gets.chomp.split(" ").map(&:to_i)
if a + b  == 9
  puts 8
else
  puts 9
end
