#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
ans = 0
a.each_cons(3) do |v|
  ans += 1 if v[0] == v[2]
end
puts ans
