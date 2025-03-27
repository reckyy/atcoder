#!/usr/bin/env ruby
l, r = gets.split.map(&:to_i)
if [l, r] == [1, 0]
  puts 'Yes'
elsif [l, r] == [0, 1]
  puts 'No'
else
  puts 'Invalid'
end
