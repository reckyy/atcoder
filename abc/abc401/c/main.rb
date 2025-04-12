#!/usr/bin/env ruby
n, k = gets.split.map(&:to_i)
a = Array.new(k, 1)
mod = 10 ** 9
sum = k
if (n == 1) || (n < k) 
  puts 1
elsif n == k
  puts n
else
  (k..n).each do |i|
    a << sum % mod
    sum = (sum + a[-1] - a[i - k]) % mod
  end
  puts a.last
end
