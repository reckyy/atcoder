#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
ans = 0
(m + 1).times  { |i| ans += n ** i }
puts ans <= 10 ** 9 ? ans : 'inf'
