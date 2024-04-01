#!/usr/bin/env ruby
k, g, m = gets.chomp.split(" ").map(&:to_i)
grass = 0
magcup = 0

k.times do
  if grass == g
    grass = 0
  elsif magcup == 0
    magcup = m
  else
    if (g - grass) >= magcup
      grass += magcup
      magcup = 0
    else
      cup = g - grass
      grass += cup
      magcup -= cup
    end
  end
end

puts "#{grass} #{magcup}"
