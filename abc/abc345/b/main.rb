#!/usr/bin/env ruby
x = gets.to_i

a, b = x.divmod(10)

if b == 0
  puts a
else
  puts a + 1
end
