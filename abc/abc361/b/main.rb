#!/usr/bin/env ruby
a, b, c, d, e, f = gets.split.map(&:to_i)
g, h, i, j, k, l = gets.split.map(&:to_i)
def doubled?(p, q, r, s)
  [p, r].max < [q, s].min
end
puts doubled?(a, d, g, j) && doubled?(b, e, h, k) && doubled?(c, f, i, l) ? 'Yes' : 'No'
