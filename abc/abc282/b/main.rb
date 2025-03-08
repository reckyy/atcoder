#!/usr/bin/env ruby
n, m = gets.chomp.split.map(&:to_i)
s = []
n.times { s << gets.chomp.chars }
ans = 0

s.each.with_index(1) do |ans_list, idx|
  (idx..(s.count - 1)).each do |i|
    combined_ans_list = ans_list.zip(s[i])
    ans += 1 if combined_ans_list.uniq.count { |elm| elm == ['x', 'x'] } == 0
  end
end

puts ans
