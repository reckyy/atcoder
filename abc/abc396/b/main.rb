#!/usr/bin/env ruby
q = gets.chomp.to_i
cards = []
q.times do
  x, y = gets.chomp.split.map(&:to_i)
  case x
  when 1
    cards.unshift(y)
  when 2
    if cards.count == 0
      puts 0
    else
      puts cards.first
      cards.shift
    end
  end
end
