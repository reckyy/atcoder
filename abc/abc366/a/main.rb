#!/usr/bin/env ruby
n, t, a = gets.split.map(&:to_i)
puts [t,a].max > [t,a].min + (n - t - a) ? 'Yes' : 'No'
