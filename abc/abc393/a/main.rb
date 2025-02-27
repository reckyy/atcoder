#!/usr/bin/env ruby
a, b = gets.chomp.split(" ")

case [a, b]
when ['sick', 'sick']
  puts 1
when ['sick', 'fine']
  puts 2
when ['fine', 'sick']
  puts 3
else
  puts 4
end
