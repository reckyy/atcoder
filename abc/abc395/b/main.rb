#!/usr/bin/env ruby
n = gets.to_i
grid = Array.new(n) { Array.new(n, '') }

(1..n).each do |i|
  j = n + 1 - i
  break if i > j

  color = i.odd? ? '#' : '.'

  (i..j).each do |k|
    grid[k - 1].fill(color, (i - 1)..(j - 1))
  end
end

grid.each do |g|
  puts g.join
end
