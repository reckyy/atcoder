#!/usr/bin/env ruby
n = gets.to_i
p = gets.chomp.split.map(&:to_i)
q = gets.chomp.split.map(&:to_i)
permutation = (1..n).to_a.permutation

p_index = permutation.find_index(p)
q_index = permutation.find_index(q)

puts (p_index - q_index).abs
