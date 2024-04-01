#!/usr/bin/env ruby
n, s, k = gets.chomp.split(" ").map(&:to_i)
sum = 0

n.times do
  p, q = gets.chomp.split(' ').map(&:to_i)
  sum += p * q 
end

puts sum >= s ? sum : sum + k
