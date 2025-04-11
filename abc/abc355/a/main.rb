#!/usr/bin/env ruby
a, b = gets.split.map(&:to_i)
ans = [1, 2, 3] - [a, b]
puts ans.length == 1 ? ans : -1
