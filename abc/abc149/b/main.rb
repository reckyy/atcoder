#!/usr/bin/env ruby
a, b, k = gets.chomp.split.map(&:to_i)

if k <= a
  puts "#{a - k} #{b}"
elsif (a + b) <= k
  puts '0 0'
else
  puts "0 #{b - (k - a)}"
end
