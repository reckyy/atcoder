#!/usr/bin/env ruby
a = gets.split.map(&:to_i)
yes_pattern = [
  [2, 1, 3, 4, 5],
  [1, 3, 2, 4, 5],
  [1, 2, 4, 3, 5],
  [1, 2, 3, 5, 4],
]
if yes_pattern.include?(a)
  puts 'Yes'
else
  puts 'No'
end
