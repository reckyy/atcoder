#!/usr/bin/env ruby
n = gets.to_i
q = gets.chomp.split(' ').map(&:to_i)
a = gets.chomp.split(' ').map(&:to_i)
b = gets.chomp.split(' ').map(&:to_i)
inf = 10**18

ans = 0
(q.max + 1).times do |x|
  y = inf
  n.times do |i|
    if q[i] < a[i] * x
      y = -inf
    elsif b[i].positive?
      y = [y, (q[i] - a[i] * x) / b[i]].min
    end
  end
  ans = [ans, x + y].max
end

puts ans
