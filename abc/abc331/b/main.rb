#!/usr/bin/env ruby
n, s, m, l = gets.chomp.split(" ").map(&:to_i)

ans = 10 ** 8
(0..100).each do |i|
  (0..100).each do |j|
    (0..100).each do |k|
      if [i * 6, j * 8, k * 12].sum >= n
        ans = [ans, i * s + j * m + k * l].min
      end
    end
  end
end

puts ans
