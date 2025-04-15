#!/usr/bin/env ruby
n = gets.to_i
a = []
n.times do
  c = gets.to_i
  a << gets.split.map(&:to_i)
end
x = gets.to_i
ans = Hash.new { |h, k| h[k] = [] }
a.each.with_index(1) do |v, i|
  ans[v.length] << i if v.include?(x)
end
if ans.empty?
  puts 0
  puts
else
  sorted_ans = ans.sort
  puts sorted_ans[0][1].length
  puts sorted_ans[0][1].join(' ')
end
