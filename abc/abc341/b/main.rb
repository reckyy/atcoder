#!/usr/bin/env ruby
n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)

(n - 1).times do |i|
  s, t = gets.chomp.split(" ").map(&:to_i)
  a[i + 1] += (a[i] / s) * t
end
puts a[n - 1]
