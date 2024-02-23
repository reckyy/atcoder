#!/usr/bin/env ruby
n, x= gets.chomp.split(" ").map(&:to_i)
puts (n / 2) < x ? n - x : x - 1
