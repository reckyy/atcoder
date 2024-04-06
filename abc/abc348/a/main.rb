#!/usr/bin/env ruby
n = gets.chomp.to_i
penalty = []

n.times do |i|
   penalty << ((i + 1) % 3 == 0 ? 'x' : 'o')
end

puts penalty.join('')
