#!/usr/bin/env ruby
s = gets.chomp.chars
count = 0

a_indexes = []
b_indexes = []
c_indexes = {}

s.each_with_index do |char, i|
  case char
  when 'A'
    a_indexes << i
  when 'B'
    b_indexes << i
  when 'C'
    c_indexes[i] = true
  end
end

a_indexes.each do |i|
  b_indexes.each do |j|
    d = j - i
    k = j + d
    count += 1 if c_indexes[k]
  end
end

puts count
