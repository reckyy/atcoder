#!/usr/bin/env ruby
a = gets.chomp.split.map(&:to_i)
a.sort!

puts (a[1] - a[0]) + (a[2] - a[1])
