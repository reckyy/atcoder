#!/usr/bin/env ruby
# refer to sp8783
n = gets.to_i
a = gets.split.map(&:to_i)

idx_lst = Array.new(10 ** 6 + 1, -1)
ans = n + 1
a.each_with_index do |v, i|
  if idx_lst[v] != -1
    ans = [ans, i - idx_lst[v] + 1].min
  end

  idx_lst[v] = i
end

puts ans == (n + 1) ? -1 : ans
