#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
hash = {}
ans = []
a.each.with_index(1) do |num, i|
  ans << (hash[num] ? hash[num] : -1)
  hash[num] = i
end
puts ans.join(' ')
