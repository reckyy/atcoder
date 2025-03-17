#!/usr/bin/env ruby
n = gets.chomp.split('').map(&:to_i)
if n.sort == [1, 2, 2, 3, 3, 3]
  puts 'Yes'
else
  puts 'No'
end
