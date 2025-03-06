#!/usr/bin/env ruby
a, b, k, l = gets.chomp.split.map(&:to_i)

if k < l
  puts [a * k, b].min
else
  div, mod = k.divmod(l)
  ans = div * b + [mod * a, b].min

  puts ans
end
