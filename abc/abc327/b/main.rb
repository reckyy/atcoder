#!/usr/bin/env ruby
b = gets.to_i
ans = (1..16).map { |i| i ** i }
puts ans.include?(b) ? ans.index(b) + 1 : -1
