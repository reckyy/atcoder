#!/usr/bin/env ruby
n, d = gets.split.map(&:to_i)
input = []
n.times do
  input << gets.split.map(&:to_i)
end

(1..d).each do |i|
  snake_length = input.map { |v| v[0] * (v[1] + i) }
  puts snake_length.max
end
