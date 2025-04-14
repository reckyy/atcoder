#!/usr/bin/env ruby
h, w, n = gets.split.map(&:to_i)
grid = Array.new(h) { ('.' * w).chars }
di = [-1, 0, 1, 0]
dj = [0, 1, 0, -1]
idx = 0
i = j = 0
n.times do
  if grid[i][j] == '.'
    grid[i][j] = '#'
    idx = (idx + 1) % 4
  else
    grid[i][j] = '.'
    idx = (idx + 3) % 4
  end

  i = (i + di[idx]) % h
  j = (j + dj[idx]) % w
end
grid.each do |g|
  puts g.join
end
