#!/usr/bin/env ruby
s = gets.chomp.chars
s_index = s.each_with_index.to_h { |char, i| [char, i] }
key = 'A'..'Z'
ans = 0
key.each_cons(2) do |from, to|
  ans += (s_index[from] - s_index[to]).abs
end
puts ans
