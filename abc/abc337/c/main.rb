#!/usr/bin/env ruby
n = gets.to_i
a = gets.chomp.split(' ').map(&:to_i)
before_line = []
a.each_with_index { |val, i| before_line[val] = i + 1 if val != -1 }
following = a.index(-1) + 1
after_line = [following]
while(after_line.length < n) do
  following = before_line[following]
  after_line.push(following)
end

puts after_line.join(' ')
