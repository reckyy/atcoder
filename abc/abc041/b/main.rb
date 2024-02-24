#!/usr/bin/env ruby
a,b,c = gets.chomp.split(" ").map(&:to_i)

puts (a * b * c) % (10 ** 9 + 7)
