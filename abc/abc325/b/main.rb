#!/usr/bin/env ruby
n = gets.to_i
input = Array.new(n) { gets.split.map(&:to_i) }
ans = (0..23).map do |hour|
  input.sum do |v|
    time = (v[1] + hour) % 24
    (9..17).cover?(time) ? v[0] : 0
  end
end.max
puts ans
