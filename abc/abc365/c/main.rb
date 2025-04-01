#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
if m > a.sum
  puts 'infinite'
  exit
end

avg = a.sum / n
avg.downto(1) do |i|
  if i * n <= m
    puts i
    exit
  end
end
