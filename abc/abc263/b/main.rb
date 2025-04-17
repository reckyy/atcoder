#!/usr/bin/env ruby
n = gets.to_i
p = gets.split.map(&:to_i)
current = n
count = 0
while current != 1
  current = p[current - 2]
  count += 1
end
puts count
