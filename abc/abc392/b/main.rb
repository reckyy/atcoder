#!/usr/bin/env ruby
n, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i)
x = []

(1..n).each do |i|
  x << i if !a.include?(i)
end

if x.empty?
  puts 0
  puts
else
  puts x.count
  puts x.join(' ')
end

# all_number = (1..n).to_a
# all_number - a すればいいだけだった。
