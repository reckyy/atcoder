#!/usr/bin/env ruby
n = gets.chomp.to_i

if n == 1
  puts 'BOWWOW'
  exit
end

sum = (1..n).sum

(2...sum).each do |i|
  if sum % i == 0
    puts 'BOWWOW'
    exit
  end
end

puts 'WANWAN'
