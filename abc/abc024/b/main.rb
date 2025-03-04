#!/usr/bin/env ruby
n, t = gets.chomp.split.map(&:to_i)
ans = 0
a = []

n.times do
  a << gets.chomp.to_i
end

a.each_with_index do |v, i|
  last_roop = (i == a.length - 1)
  space = last_roop ? v - a[i - 1] : a[i + 1] - v
  ans += (space >= t) ? t : space
  if last_roop && (space < t)
    ans += (t - space)
  end
end

puts ans
