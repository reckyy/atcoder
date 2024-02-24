#!/usr/bin/env ruby
n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
sorted_a = a.sort.reverse

n.times { |i| puts a.index(sorted_a[i]) + 1}
