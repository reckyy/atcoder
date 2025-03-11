#!/usr/bin/env ruby
x = gets.to_i
(1..x).each do |i|
  if (1..i).inject(:*) == x
    puts i
    exit
  end
end
