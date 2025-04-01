#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
second = a.sort_by { |num| -num }[1]
puts a.index(second) + 1
