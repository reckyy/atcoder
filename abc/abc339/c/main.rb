#!/usr/bin/env ruby
n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
sum = 0
min_sum = 0

a.each { |i|
  sum += i
  min_sum = [min_sum, sum].min
}
puts min_sum.negative? ? sum + (min_sum.abs) : sum
