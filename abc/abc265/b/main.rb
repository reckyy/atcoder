#!/usr/bin/env ruby
n, m, t = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = Array.new(n, 0)
m.times do
  input = gets.split.map(&:to_i)
  x[input[0] - 1] = input[1]
end
a.each_with_index do |v, i|
  if t <= v
    puts 'No'
    exit
  else
    t -= v
    t += x[i + 1]
  end
end
puts 'Yes'
