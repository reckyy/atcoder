#!/usr/bin/env ruby
n = gets.to_i
n_sqrt = Math.sqrt(n).floor
ans = n

(1..n_sqrt).each do |i|
  if n % i == 0
    a_digits = i.digits.length
    b_digits = (n / i).digits.length

    max = [a_digits, b_digits].max
    ans = [ans, max].min
  end
end

puts ans
