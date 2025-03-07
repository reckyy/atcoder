#!/usr/bin/env ruby
a, b, x, y = gets.chomp.split.map(&:to_i)
if a == b
  puts x
  exit
end

ans = 0
count = 0

while(count < ((b - a).abs - 1))
  ans += [2 * x, y].min
  count += 1
end

if a < b
  ans += [3 * x, (x + y)].min
  puts ans
else
  puts ans + x
end
