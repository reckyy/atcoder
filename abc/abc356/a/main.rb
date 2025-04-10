#!/usr/bin/env ruby
n, q, r = gets.split.map(&:to_i)
a = (1..n).to_a
a[q-1..r-1] = a[q-1..r-1].reverse
puts a.join(' ')
