#!/usr/bin/env ruby
n, k = gets.split.map(&:to_i)
ab = n.times.map{gets.split.map(&:to_i)}
ab.sort!
ab.each do |i|
  k -= i[1]
  if k <= 0
    puts i[0]
    exit
  end
end
