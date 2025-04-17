#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
s = Set.new
ans = (n * (n-1)) / 2
m.times do
  k, *x = gets.split.map(&:to_i)
  x.combination(2).each { |e| s.add(e) }
end
puts ans == s.length ? 'Yes' : 'No'
