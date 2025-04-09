#!/usr/bin/env ruby
n, a = gets.split.map(&:to_i)
t = gets.split.map(&:to_i)
now_second = 0
t.each do |time|
  if now_second > time
    puts now_second + a
    now_second += a
  else
    puts time + a
    now_second = time + a
  end
end
