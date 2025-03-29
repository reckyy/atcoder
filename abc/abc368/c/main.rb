#!/usr/bin/env ruby
n = gets.to_i
h = gets.split.map(&:to_i)
t = 0
h.each do |num|
  health = num
  div = health / 5
  t += div * 3
  health -= div * 5
  while(health > 0)
    t += 1
    (t % 3) == 0 ? (health -= 3) : (health -= 1)
  end
end
puts t
