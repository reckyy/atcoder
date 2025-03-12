#!/usr/bin/env ruby
x = gets.to_i
multiplication_table = []
(1..9).each do |i|
  (1..9).each do |j|
    multiplication_table << i * j
  end
end

puts multiplication_table.select { |mt| mt != x }.sum
