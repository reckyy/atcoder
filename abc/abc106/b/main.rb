#!/usr/bin/env ruby
n = gets.to_i
odd_numbers = (1..n).select { |i| i.odd? }
factors_count = 0
ans = 0

odd_numbers.each do |i|
  (1..i).each do |j|
    factors_count += 1 if i % j == 0

    if factors_count == 8
      ans += 1
      break
    end
  end
  factors_count = 0
end

puts ans
