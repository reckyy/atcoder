#!/usr/bin/env ruby
n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
times = []

(a.length - 1).times do |i|
  times << a[i] * a[i + 1]
end

puts times.join(' ')
