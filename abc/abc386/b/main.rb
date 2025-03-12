#!/usr/bin/env ruby
s = gets.chomp
double_count = 0
s.scan(/(00)/) do
  double_count += 1
end

puts s.length - double_count
