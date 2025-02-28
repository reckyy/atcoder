#!/usr/bin/env ruby
n = gets.to_i
stared_person= gets.chomp.split.map(&:to_i)
cloth_number = gets.chomp.split.map(&:to_i)
ans = []

list = cloth_number.zip(stared_person).sort.to_h
list.each do |k, v|
  ans << cloth_number[v - 1]
end

puts ans.join(' ')
