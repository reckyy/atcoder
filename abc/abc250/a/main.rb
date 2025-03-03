#!/usr/bin/env ruby
#give up
h, w = gets.chomp.split.map(&:to_i)
r, c = gets.chomp.split.map(&:to_i)
ans = 0

ans += 1 if c != 1
ans += 1 if r != 1
ans += 1 if c != w
ans += 1 if r != h

puts ans
