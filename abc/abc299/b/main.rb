#!/usr/bin/env ruby
n, t = gets.chomp.split.map(&:to_i)
c = gets.chomp.split.map(&:to_i)
r = gets.chomp.split.map(&:to_i)
max_point = 0
winner_color = c.include?(t) ? t : c.first
winner_number = 0

c.each_with_index do |color, i|
  if color == winner_color
    if max_point < r[i]
      max_point = r[i]
      winner_number = i
    end
  end
end

puts winner_number + 1
