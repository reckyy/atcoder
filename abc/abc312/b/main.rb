#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
s = Array.new(n) { gets.chomp.chars }
tak_code = ['###.'] * 3 + ['....'] * 2 + ['.###'] * 3
tak_code = tak_code.map(&:chars)
ans = []
(0..(n - 9)).each do |i|
  (0..(m - 9)).each do |j|
    grid = []

    (0..3).each { |k| grid << s[k + i][0+j..3+j] }
    (5..8).each { |k| grid << s[k + i][5+j..8+j] }

    ans << [i+1, j+1] if grid == tak_code
  end
end
if ans.empty?
  puts ''
else
  ans.each { |v| puts v.join(' ') }
end
