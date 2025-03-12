#!/usr/bin/env ruby
cards = gets.split.map(&:to_i)
if cards.uniq.count == 2
  puts 'Yes'
else
  puts 'No'
end

