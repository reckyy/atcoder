#!/usr/bin/env ruby
#refet to answer
n = gets.to_i
h = gets.split.map(&:to_i)
uniq_h = h.uniq

if uniq_h.count == n
  puts 1
  exit
end

max_count = 1
(1...n).each do |k|
  (0...k).each do |start|
    current_height = nil
    current_count = 0

    (start...n).step(k) do |i|
      if h[i] != current_height
        current_height = h[i]
        current_count = 0
      end
      current_count += 1
      max_count = [max_count, current_count].max
    end
  end
end

puts max_count
