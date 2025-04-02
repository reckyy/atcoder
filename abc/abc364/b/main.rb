#!/usr/bin/env ruby
h, w = gets.split.map(&:to_i)
si, sj = gets.split.map(&:to_i)
si -= 1
sj -= 1
grid = Array.new(h) { gets.chomp.chars }
x = gets.chomp.chars
x.each do |c|
  case c
  when 'U'
    next if si == 0
    si -= 1 if grid[si - 1][sj] == '.'
  when 'L'
    next if sj == 0
    sj -= 1 if grid[si][sj - 1] == '.'
  when 'D'
    next if si == h - 1
    si += 1 if grid[si + 1][sj] == '.'
  when 'R'
    next if sj == w - 1
    sj += 1 if grid[si][sj + 1] == '.'
  end
end
puts "#{si + 1} #{sj + 1}"
