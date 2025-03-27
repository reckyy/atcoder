#!/usr/bin/env ruby
n = gets.to_i
a = Array.new(n) { gets.split.map(&:to_i) }
element = 1
(0...n).each do |i|
  if i == 0
    element = a[0][0]
  else
    x, y = (element - 1 < i) ? [i, element - 1] : [element - 1, i]
    element = a[x][y]
  end
end
puts element
