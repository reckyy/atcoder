#!/usr/bin/env ruby
n, x = gets.chomp.split.map(&:to_i)
ans = 0
m = []
n.times do
  m << gets.to_i
end

x -= m.sum
ans += m.count
m.sort!
minimum = m[0]

if x >= m[0]
  until(x < minimum)
    ans += 1
    x -= minimum
  end
end

puts ans
