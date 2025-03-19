#!/usr/bin/env ruby
s = Array.new(8) { gets.chomp.split('') }
grid = Array.new(8, ('.' * 8).chars)

s.each_with_index do |squares, i|
  if squares.include?('#')
    grid[i] = ('#' * 8).chars
  end

  squares.each_with_index do |square, j|
    if square == '#'
      (0..7).each { |k| grid[k][j] = '#' }
    end
  end
end

ans = 0
grid.each do |g|
  ans += g.count { |v| v == '.' }
end

puts ans
