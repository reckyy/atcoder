#!/usr/bin/env ruby
# refer to answer
n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i).sort
k = n - k
ans = a[k - 1] - a[0]
(n - k).times do |i|
  ans = [ans, a[k + i] - a[1 + i]].min
end
puts ans
