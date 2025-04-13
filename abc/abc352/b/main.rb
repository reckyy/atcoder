#!/usr/bin/env ruby
s = gets.chomp.chars
t = gets.chomp.chars
ans = []
t.each.with_index(1) do |char, i|
  if s[0] == char
    ans << i
    s.shift
  end
end
puts ans.join(' ')
