#!/usr/bin/env ruby
# refer to haruguchi
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
n.times do |i|
  puts i + 1 >= a[0] ? a.shift - (i + 1) : a[0] - (i + 1)
end
