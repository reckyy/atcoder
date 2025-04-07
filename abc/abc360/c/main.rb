#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
w = gets.split.map(&:to_i)
hash = Hash.new { |h, k| h[k] = [] }
(0...n).each { |i| hash[a[i]].push(w[i]) }
ans = 0
hash.each do |k, v|
  copy_v = v.sort
  while(copy_v.length > 1)
    ans += copy_v[0]
    copy_v.shift
  end
end
puts ans
