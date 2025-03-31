#!/usr/bin/env ruby
a, b, c = gets.split.map(&:to_i)
if b < c
  puts (b < a && a < c) ? 'No' : 'Yes'
else
  puts (c < a && a < b) ? 'Yes' : 'No'
end

