#!/usr/bin/env ruby
n = gets.to_i
k = gets.split.map(&:to_i)
ans = Float::INFINITY
sum = k.sum
(1..(n / 2) + 1 ).each do |i|
  group_a_list = k.combination(i)
  group_a_list.each do |group_a|
    group_a_sum = group_a.sum
    group_b_sum = sum - group_a_sum
    ans = [ans, [group_a_sum, group_b_sum].max].min
  end
end
puts ans
