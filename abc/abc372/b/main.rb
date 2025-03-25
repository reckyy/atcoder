#!/usr/bin/env ruby
m = gets.to_i
i = 0
ans = []
while(i < 20 && m != 0)
  power = 0
  while 3 ** (power + 1) <= m do power += 1 end
  m -= 3 ** power
  ans << power
  i += 1
end
puts ans.size
puts ans.join(' ')
