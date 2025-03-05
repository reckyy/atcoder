#!/usr/bin/env ruby
n = gets.chomp.to_i
d, x = gets.chomp.split.map(&:to_i)
a = []
n.times do
  a << gets.chomp.to_i
end

a.each do |day|
  x += 1
  remained_day = d
  added_day = 1

  while(day < remained_day)
    x += 1
    remained_day -= day
    added_day += day
  end
end

puts x
