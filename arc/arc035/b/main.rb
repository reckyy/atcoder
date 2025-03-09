#!/usr/bin/env ruby
n = gets.chomp.to_i
t = Array.new(n) { gets.chomp.to_i }.sort
penalty = 0
ans_minutes = 0
t.each do |v| 
  penalty += v
  ans_minutes += penalty
end

ans_patterns = 1
summarized_t = t.group_by { |v| v }
summarized_t.each do |k, v|
  ans_patterns *= (1..v.length).inject(:*)
end

puts ans_minutes
puts ans_patterns % (10 ** 9 + 7)

