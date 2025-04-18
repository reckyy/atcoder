#!/usr/bin/env ruby
n = gets.to_i
h = Hash.new { |h, k| h[k] = 0}
n.times do
  s = gets.chomp
  puts h[s].zero? ? s : "#{s}(#{h[s]})"
  h[s] += 1
end
