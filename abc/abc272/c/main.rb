#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
odd_a, even_a = a.partition(&:odd?)
odd_sum_max = odd_a.sort.last(2).sum if odd_a.length >= 2
even_sum_max = even_a.sort.last(2).sum if even_a.length >= 2
puts [odd_sum_max, even_sum_max].compact.max || -1
