#!/usr/bin/env ruby
n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)

dp = Array.new(n, 0)
dp[0] = 0
dp[1] = (a[0] - a[1]).abs

(2...n).each do |i|
  dp[i] = [dp[i - 1] + (a[i] - a[i - 1]).abs, dp[i - 2] + (a[i] - a[i - 2]).abs].min
end

puts dp[n - 1]


#以下は没。これは動的計画法で解くものらしい
cost = 0
a.each_cons(3) do |heights|
  dif1 = (heights[0] - heights[1]).abs
  dif2 = (heights[0] - heights[2]).abs
  dif1 = dif1 < dif2 ? true : false
  cost += dif1 ? dif1 : dif2
end
puts cost
