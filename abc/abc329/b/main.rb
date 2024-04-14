#!/usr/bin/env ruby
n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i).to_set
a.delete(a.max)

puts a.max

