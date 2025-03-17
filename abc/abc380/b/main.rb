#!/usr/bin/env ruby
s = gets.chomp.chars
ans = []
counter = 0
s.shift
s.each do |char|
  counter += 1 if char == '-'
  if char == '|'
    ans << counter
    counter = 0
  end
end

puts ans.join(' ')
