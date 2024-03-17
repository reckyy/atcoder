#!/usr/bin/env ruby
s = gets.chomp.chars
dammy_s = s

pattern = Set[]
n = s.length

(n - 1).times do |i|
  (i..(n - 1 - i)).each do |j|
    dammy_s[i], dammy_s[j] = s[j], s[i]
    pattern << dammy_s unless pattern.include?(dammy_s.join(''))
    dammy_s = s
  end
end

puts pattern.count
