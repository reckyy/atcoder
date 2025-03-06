#!/usr/bin/env ruby
n = gets.chomp.to_i
div, mod = n.divmod(10)

ans = [div * 100 + mod * 15, (div + 1) * 100].min

puts ans
