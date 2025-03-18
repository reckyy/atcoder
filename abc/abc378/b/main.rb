#!/usr/bin/env ruby
n = gets.to_i
a = []
n.times do
  q, r = gets.split.map(&:to_i)
  a << [q, r]
end
q = gets.to_i
q.times do
  t, d = gets.split.map(&:to_i)
  div, mod = d.divmod(a[t - 1][0])
  div += 1 if mod > a[t - 1][1]
  puts div * a[t - 1][0] + a[t - 1][1]
end
