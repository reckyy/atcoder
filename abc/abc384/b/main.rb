#!/usr/bin/env ruby
n, r = gets.split.map(&:to_i)

n.times do
  d, a = gets.split.map(&:to_i)

  case d
  when 1
    r += a if (r >= 1600) && (r < 2800)
  when 2
    r += a if (r >= 1200) && (r < 2400)
  end
end

puts r
