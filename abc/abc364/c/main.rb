#!/usr/bin/env ruby
n, x, y = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = []
min_sum_x = 0
min_sum_y = 0
a.sort_by { |v| -v }.each.with_index(1) do |sweet, i|
  min_sum_x += sweet
  if min_sum_x > x
    ans << i
    break
  end
end
b.sort_by { |v| -v }.each.with_index(1) do |salty, i|
  min_sum_y += salty
  if min_sum_y > y
    ans << i
    break
  end
end
puts ans.min || n
