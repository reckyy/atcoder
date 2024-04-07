#!/usr/bin/env ruby
n, l, r = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
x = []

a.each do |i|
  (l..r).each do |j|
    if i < l
      x << l
      break
    elsif r < i
      x << r
      break
    else
      x << i
      break
    end
  end
end

puts x.join(' ')
