#!/usr/bin/env ruby
n = gets.to_i
count = 0

(2..Math.sqrt(n).to_i).step(2) do |x|
  tmp = x
  while tmp % 2 == 0
    tmp /= 2
  end

  sqrt = Math.sqrt(tmp).to_i
  count += 1 if sqrt * sqrt == tmp
end

puts count
