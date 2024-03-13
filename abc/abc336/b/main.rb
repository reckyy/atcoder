#!/usr/bin/env ruby
n = gets.to_i
number = n.to_s(2).reverse
count = 0
number.each_char do |s|
  count += 1 if s == "0"
  if s == "1"
    puts count
    break
  end
end
