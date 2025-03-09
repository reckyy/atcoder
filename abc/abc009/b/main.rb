#!/usr/bin/env ruby
n = gets.chomp.to_i
a = Array.new(n) { gets.chomp.to_i }
puts a.sort.uniq[-2]

