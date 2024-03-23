#!/usr/bin/env ruby
n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(' ').map{ |v| v.to_i if v.to_i <= k }.uniq.to_set
sum = 0

(1..a.max).each do |v|
  sum += v if a.include?(v)
end
puts sum
