#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
h = Hash.new { |h, k| h[k] = [] }
array_h = []
m.times do
  p, y = gets.chomp.split
  y = y.to_i
  h[p] << y
  array_h << [p, y]
end
cities_order = {}
h.values.each do |values|
  values.sort!
  values.each.with_index(1) do |v, i|
    cities_order[v] = i.to_s
  end
end
array_h.each do |p, y|
  puts p.rjust(6, '0') + cities_order[y].rjust(6, '0')
end
