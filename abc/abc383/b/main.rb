#!/usr/bin/env ruby
# refer to mid_
h, w, d = gets.split.map(&:to_i)
grid = Array.new(h) { gets.chomp.split('') }
put_position = (0...h).to_a.product((0...w).to_a).filter {|i, j| grid[i][j] == '.'}

humidified = []
put_position.product(put_position).each do |(x1, y1), (x2, y2)|
  humidified_floor = put_position.count {|x3, y3| ((x3 - x1).abs + (y3 - y1).abs <= d || (x3 - x2).abs + (y3 - y2).abs <= d)}
  humidified << humidified_floor
end

puts humidified.max
