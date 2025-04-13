#!/usr/bin/env ruby
n = gets.to_i
p = gets.split.map(&:to_i)
count = 0
rank = {}
p.sort.reverse.chunk_while{ |a, b| a == b }.each do |v|
  rank[v[0]] = count + 1
  count += v.length
end
p.each { |num| puts rank[num] }
