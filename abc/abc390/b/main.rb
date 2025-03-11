#!/usr/bin/env ruby
# refer to answer
n = gets.to_i
a = gets.split.map(&:to_i)

a.each_cons(3) do |v|
  if (v[1] ** 2) != (v[0] * v[2])
    puts 'No'
    exit
  end
end

puts 'Yes'
