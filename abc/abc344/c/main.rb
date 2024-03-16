#!/usr/bin/env ruby
n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
m = gets.to_i
b = gets.chomp.split(' ').map(&:to_i)
l = gets.to_i
c = gets.chomp.split(' ').map(&:to_i)
q = gets.to_i
x = gets.chomp.split(' ').map(&:to_i)

sum_numbers = []
a.each do |i|
  b.each do |j|
    c.each do |k|
      sum_numbers << (i + j + k)
    end
  end
end
sum_numbers = sum_numbers.to_set

x.each do |num|
  puts sum_numbers.include?(num) ? "Yes" : "No"
end
