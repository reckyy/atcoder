#!/usr/bin/env ruby
n = gets.to_i
a = gets.chomp.split.map(&:to_i)

if a.uniq.sort == a
  puts 'Yes'
else
  puts 'No'
end
