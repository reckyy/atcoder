#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
hash = Hash.new{ |h, k| h[k] = [] }
(n * 3).times do |i|
  hash[a[i]] << i + 1
end
ans = []
hash.sort_by { |k, v| v[1] }.each { |v| ans << v[0] }
puts ans.join(' ')
