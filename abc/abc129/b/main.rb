#!/usr/bin/env ruby
n = gets.chomp.to_i
w = gets.chomp.split.map(&:to_i)
ans = []

1.upto(n - 1) do |i|
  front_sum = w.slice(0, i).sum
  back_sum = w.slice(i..-1).sum
  abs = (front_sum - back_sum).abs

  ans << abs
end

puts ans.min
