#!/usr/bin/env ruby
n, k, x = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
a.insert(k, x)
puts a.join(' ')
