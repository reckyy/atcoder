#!/usr/bin/env ruby
n = gets.chomp.to_i
blue_cards = {}
n.times do
  s = gets.chomp
  blue_cards[s] ||= 0
  blue_cards[s] += 1
end
m = gets.chomp.to_i
red_cards = {}
m.times do
  t = gets.chomp
  red_cards[t] ||= 0
  red_cards[t] -= 1
end

ans_hash = blue_cards.merge(red_cards) { |key, blue_val, red_val| blue_val + red_val }
if ans_hash.all? { |_, v| v.negative? }
  puts 0
else
  puts ans_hash.values.max
end
