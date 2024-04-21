#!/usr/bin/env ruby
n = gets.chomp.to_i
a = gets.chomp.split(' ').map(&:to_i)

puts 0 - a.sum
