#!/usr/bin/env ruby
n, x = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sort
count = 0

a.each do |v|
  if x >= v
    x -= v
    count += 1
  else
    break
  end
end

if count == n && x > 0
  puts n - 1
else
  puts count
end
