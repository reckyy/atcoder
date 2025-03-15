#!/usr/bin/env ruby
# refer to answer
s = gets.chomp.chars
expect = 'i'
ans = 0

s.each do |char|
  if char == expect
    expect = (expect == 'i' ? 'o' : 'i')
  else
    ans += 1
  end
end

ans += 1 if s.last == 'i'

puts ans
