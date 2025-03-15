#!/usr/bin/env ruby
n, d = gets.split.map(&:to_i)
s = gets.chomp.chars
eaten_cookies = 0
s.reverse!

s.map! do |str|
  if str == '@' && eaten_cookies < d
    eaten_cookies += 1
    '.'
  else
    str
  end
end

puts s.reverse.join
