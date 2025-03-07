#!/usr/bin/env ruby
# give up
n, a, b = gets.chomp.split.map(&:to_i)
blue_and_red = n / (a + b)
rem = [n % (a + b), a].min

puts a * blue_and_red + rem
