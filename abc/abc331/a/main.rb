#!/usr/bin/env ruby

a, b = gets.chomp.split(" ").map(&:to_i)
y, m, d = gets.chomp.split(" ").map(&:to_i)

y += 1 if m == a && d == b
if m == a && d == b
  m = 1
elsif d == b
  m += 1
end

d = d == b ? 1 : d + 1

puts "#{y} #{m} #{d}"
