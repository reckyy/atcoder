#!/usr/bin/env ruby
n, t = gets.chomp.split(" ").map(&:to_i)
player_scores = {}
(1..n).each do |i|
  player_scores[i] = 0
end
t.times do
  a, b = gets.chomp.split(" ").map(&:to_i)
  player_scores[a] += b
  puts player_scores.values.tally.count
end
