#!/usr/bin/env ruby
n, t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
time = 0
t %= a.sum
a.each_with_index do |x, i|
  time += x
  if time > t
    puts "#{i + 1} #{t - (time - x)}"
    break
  end
end
