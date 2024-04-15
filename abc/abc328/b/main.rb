#!/usr/bin/env ruby
n = gets.chomp.to_i
d = gets.chomp.split(" ").map(&:to_i)
months = []
[1,2,3,4,5,6,7,8,9,11,22,33,44,55,66,77,88,99].map do |day|
  months << [day, day]
  months << [day, day % 10] if day > 10
  months << [day, day * 11] if day < 10
end
times = 0

d.each.with_index(1) do |day, i|
  (1..day).each do |j|
    times += 1 if months.include?([i, j])
  end
end

puts times
