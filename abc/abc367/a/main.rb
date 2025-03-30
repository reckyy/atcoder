#!/usr/bin/env ruby
a, b, c = gets.split.map(&:to_i)
if b < c
  puts (b < a && a < c) ? 'No' : 'Yes'
else
  
end

