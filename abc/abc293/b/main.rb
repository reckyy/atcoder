#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
list = (1..n).to_set
a.each.with_index(1) { |num, i| list.delete(num) if list.include?(i) }
puts list.length
puts list.to_a.join(' ')
