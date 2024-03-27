#!/usr/bin/env ruby
a, m, l, r = gets.chomp.split(" ").map(&:to_i)

if (l - a) % m == 0
  first_in_range = l
else
  first_in_range = l + m - ((l - a) % m)
end

if (r - a) % m == 0
  last_in_range = r
else
  last_in_range = r - ((r - a) % m)
end

if first_in_range > r
  puts 0
else
  puts ((last_in_range - first_in_range) / m) + 1
end
