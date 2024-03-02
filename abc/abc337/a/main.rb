#!/usr/bin/env ruby
n = gets.to_i
score_x, score_y = 0, 0
n.times do
  x, y = gets.chomp.split(" ").map(&:to_i)
  score_x += x
  score_y += y
end
if score_x > score_y
  puts "Takahashi"
elsif score_x < score_y
  puts "Aoki"
else
  puts "Draw"
end
