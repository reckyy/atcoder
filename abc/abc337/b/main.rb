#!/usr/bin/env ruby
s = gets.chomp.chars
if s.sort == s
  puts "Yes"
else
  puts "No"
end
