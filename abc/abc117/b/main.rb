#!/usr/bin/env ruby
n = gets.to_i
l = gets.split.map(&:to_i)
puts l.max < (l.sum - l.max) ? 'Yes' : 'No'
