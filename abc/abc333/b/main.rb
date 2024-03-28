#!/usr/bin/env ruby
s = gets.chomp.chars
t = gets.chomp.chars

p = %w[A B C D E]
rp = %w[A E D C B]

p_s_diff = (p.index(s[1]) - p.index(s[0])).abs
p_t_diff = (p.index(t[1]) - p.index(t[0])).abs
rp_s_diff = (rp.index(s[1]) - rp.index(s[0])).abs
rp_t_diff = (rp.index(t[1]) - rp.index(t[0])).abs

t_diffs = [p_t_diff, rp_t_diff]

if t_diffs.include?(p_s_diff) || t_diffs.include?(rp_s_diff)
  puts 'Yes'
else
  puts "No"
end
