#!/usr/bin/env ruby
n = gets.to_i
t, a = gets.split.map(&:to_i)
h = gets.split.map(&:to_i)
avg = h.map { |height| (a - (t - height * 0.006)).abs }
puts avg.index(avg.min) + 1
