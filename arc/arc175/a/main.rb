#!/usr/bin/env ruby
n = gets.chomp.to_i
p = gets.chomp.split(' ').map(&:to_i)
s = gets.chomp.chars

spoons = (1..n).each_cons(2).to_a
spoons << [n, 1]

s.each_with_index do |c, i|
  if spoons[i].any?
    
  end
end
