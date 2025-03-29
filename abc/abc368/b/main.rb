#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
while(a.max != a.sum)
  a.sort! { |a, b| b <=> a}
  a[0] -= 1
  a[1] -= 1
  ans += 1
end
puts ans
