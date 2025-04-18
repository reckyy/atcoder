#!/usr/bin/env ruby
n, x, y, z = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
list = []
(1..n).each { |i| list << [i, a[i - 1], b[i - 1]] }
list.sort_by! { |i, j, k| [-j, i] }
list[x..] = list[x..].sort_by { |i, j, k| [-k, i] }
list[x+y..] = list[x+y..].sort_by { |i, j, k| [-(j+k), i] }
list[0...(x+y+z)] = list[0...(x+y+z)].sort_by { |i, j, k| i }
(0...(x+y+z)).each {|i| puts list[i][0] }
