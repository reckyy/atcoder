#!/usr/bin/env ruby
s = gets.chomp.chars
t = gets.chomp.chars
(0...s.length).each do |i|
  if s[i] != t[i]
    puts i+1
    exit
  end
end
puts t.length
