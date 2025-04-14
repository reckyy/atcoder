#!/usr/bin/env ruby
n = gets.to_i
s = []
n.times { |i| s << [i + 1, gets.chomp.chars.count { |char| char == 'o' }] }
ans = []
s.sort_by { |a, b| [b, -a] }.reverse.each do |v|
  ans << v[0]
end
puts ans.join(' ')
