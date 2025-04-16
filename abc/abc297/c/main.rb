#!/usr/bin/env ruby
h, w = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.chars }
(0...h).each do |i|
  (0...w).each do |j|
    if [s[i][j], s[i][j+1]] == ['T', 'T']
      s[i][j] = 'P'
      s[i][j+1] = 'C'
    end
  end
end
s.each { |v| puts v.join }
