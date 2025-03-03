#!/usr/bin/env ruby
a, b, c = gets.chomp.split.map(&:to_i)

(a..b).each do |i|
  if i % c == 0
    puts i
    exit
  end
end

puts -1
