#!/usr/bin/env ruby
n = gets.chomp.to_i
p = gets.chomp.split.map(&:to_i)
different_times = 0

(1..n).each do |i|
  different_times += 1 if p[i - 1] != i
end

if [2, 0].include?(different_times)
  puts 'YES'
else
  puts 'NO'
end
