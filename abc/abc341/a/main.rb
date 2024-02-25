#!/usr/bin/env ruby
n = gets.to_i

s = '1'
n.times do
  s.concat '01'
end
puts s
