#!/usr/bin/env ruby
n = gets.to_i
ans = 0

if n = 7
  puts "2 1"
  exit
end

ans = n / 18
puts ans.integer?  ? "#{ans} #{ans - 1}" : -1

