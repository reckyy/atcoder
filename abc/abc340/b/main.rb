#!/usr/bin/env ruby
q = gets.to_i
a = []

q.times do
  s, x = gets.chomp.split(" ").map(&:to_i)
  if s == 1
    a.push(x)
  else
    puts a[-x]
  end
end
