#!/usr/bin/env ruby
n = gets.to_i
(1..9).each do |i|
  (1..9).each do |j|
    if i * j == n
      puts 'Yes'
      exit
    end
  end
end

puts 'No'
