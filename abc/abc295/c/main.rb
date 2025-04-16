#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
a.tally.each { |_, v| ans += v / 2 }
puts ans
