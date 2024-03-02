#!/usr/bin/env ruby
n = gets.to_i
sq = Math::sqrt(n).to_i
n.downto(1) do |i|
  sq.downto(1) do |j|
    if j * j * j == i && i.to_s.reverse == i.to_s
      puts i
      exit
    end
  end
end
