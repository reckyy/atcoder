#!/usr/bin/env ruby
r, g, b = gets.split.map(&:to_i)
c = gets.chomp
case c
when 'Blue' then puts [r, g].min
when 'Green' then puts [r, b].min
when 'Red' then puts [g, b].min
end
