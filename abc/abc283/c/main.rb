#!/usr/bin/env ruby
a = gets.to_i
i = 0
ans = 0
while(i < a.length-1)
  ans += 1
  if [a[i], a[i+1]] == [0, 0]
    i += 2
    next
  elsif i == a.length-2
    ans += 1
  end
  i += 1
end
puts ans
