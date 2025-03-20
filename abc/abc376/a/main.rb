#!/usr/bin/env ruby
n, c = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
prev_second = 0
candy = 0
(0...n).each do |i|
  if i == 0
    candy += 1
    prev_second = t[i]
  else
    if (t[i] - prev_second) >= c
      prev_second = t[i]
      candy += 1
    end
  end
end

puts candy
