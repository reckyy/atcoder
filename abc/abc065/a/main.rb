#!/usr/bin/env ruby
x, a, b = gets.chomp.split.map(&:to_i)
remained_date = b - a
delicious = remained_date <= 0
if delicious
  puts 'delicious'
elsif !delicious && (x - remained_date) >= 0
  puts 'safe'
else
  puts 'dangerous'
end
