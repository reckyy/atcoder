#!/usr/bin/env ruby
n, a, b = gets.chomp.split.map(&:to_i)

if n <= 5
  puts b * n
else
  ans = 0
  ans += 5 * b
  ans += a * (n - 5)
  puts ans
end
