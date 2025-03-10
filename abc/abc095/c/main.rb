#!/usr/bin/env ruby
a, b, c, x, y = gets.chomp.split.map(&:to_i)

a_price = a * x
b_price = b * y
ab_pattern_price = [x, y].max * c * 2

if x == y
  puts [(a_price + b_price), ab_pattern_price].min
else
  shortage_pizza_price = x > y ? a : b
  ab_and_shortage_price = [x, y].min * c * 2 + ((x - y).abs * shortage_pizza_price)

  puts [ab_pattern_price, ab_and_shortage_price, (a_price + b_price)].min
end
