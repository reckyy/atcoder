#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
list = a.tally.select { |_, v| v == 1 }.keys
if list.any?
  puts a.index(list.max) + 1
else
  puts '-1'
end
