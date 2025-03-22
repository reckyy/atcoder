#!/usr/bin/env ruby
a = gets.split.map(&:to_i)
a.combination(5).each do |hands|
  next if hands.uniq.length == 1
  pattern_a = [hands.min] * 3 + [hands.max] * 2
  pattern_b = [hands.min] * 2 + [hands.max] * 3
  if (hands.sort == pattern_a) || (hands.sort == pattern_b)
    puts 'Yes'
    exit
  end
end
puts 'No'
