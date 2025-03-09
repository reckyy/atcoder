#!/usr/bin/env ruby
# 解けたけどTLE。
n, m = gets.chomp.split.map(&:to_i)
b = gets.chomp.split.map(&:to_i)
w = gets.chomp.split.map(&:to_i)
b.sort_by! { |v| -v }
w.sort_by! { |v| -v }

ans = 0

(1..n).each do |i|
  b_sum = b[0, i].sum
  w_max_list = (1..[m, i].min).map { |j| w.slice(0...j).sum }
  w_sum = w_max_list.max

  ans = [ans, b_sum + w_sum].max
end

puts ans > 0 ? ans : 0
