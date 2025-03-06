#!/usr/bin/env ruby
a = gets.chomp.split.map(&:to_i)
k = gets.chomp.to_i

k.times do
  a.map! { |n| n == a.max ? n * 2 : n }
end

puts a.sum
