#!/usr/bin/env ruby
# refer to answer & S142857
k = gets.to_i
s = gets.chomp
t = gets.chomp
i = 0
i += 1 while s[i] &.== t[i]
puts s[i+1..-1] == t[i+1..-1] || s[i..-1] == t[i+1..-1] || s[i+1..-1] == t[i..-1] ? 'Yes' : 'No'
