#!/usr/bin/env ruby
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i).sort.reverse

s = []
sum = 0

a.each do |v|
  if s.empty?
    s.push(v)
    sum += v
  else
    top = s.last
    if top + v >= 0
      s.push(v)
      sum += v
    else
      s.pop
      sum -= top
    end
  end
end

puts sum
