#!/usr/bin/env ruby
n, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
(0..100).each do |i|
  a << i
  if a.sum - a.min - a.max >= x
    puts i
    exit
  end
  a.pop
end
puts -1
