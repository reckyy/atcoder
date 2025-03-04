#!/usr/bin/env ruby
n = gets.chomp.to_i

def puts_ans(count, number_list)
  puts count
  number_list.each { |i| puts i }
end

case n
when 1
  puts_ans(1, [1])
when 2
  puts_ans(1, [2])
when 3
  puts_ans(2, [1, 2])
when 4
  puts_ans(2, [2, 2])
when 5
  puts_ans(3, [1, 2, 2])
when 6
  puts_ans(2, [2, 4])
when 7
  puts_ans(3, [1, 2, 4])
when 8
  puts_ans(1, [8])
when 9
  puts_ans(2, [1, 8])
when 10
  puts_ans(2, [2, 8])
end
