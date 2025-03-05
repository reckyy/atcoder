#!/usr/bin/env ruby
# give up
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)

sum = a.sum
if sum % n != 0
  puts -1
  exit
end

ans = 0
target_number = sum / n
imbalance = 0
(0...n).each do |i|
  imbalance += a[i] - target_number
  ans += 1 if imbalance != 0
end

puts ans
