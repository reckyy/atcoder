#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
named = []
m.times do
  a, b = gets.chomp.split
  a = a.to_i
  if named.include?(a).! && (b == 'M')
    puts 'Yes'
    named << a
  else
    puts 'No'
  end
end
