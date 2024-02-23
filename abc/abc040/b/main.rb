#!/usr/bin/env ruby
n = gets.to_i

ans = n
1.step(Math::sqrt(n).to_i) do |num|
  w = n / num
  ans = [ans, (num - w).abs + n - num * w].min
end
puts ans
