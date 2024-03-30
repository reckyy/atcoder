#!/usr/bin/env ruby
n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
time_numbers = []

a.each do |i|
  time_numbers << i / k if i % k == 0
end

puts time_numbers.join(' ')
