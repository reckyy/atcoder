#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
a_set = a.to_set
(a+b).sort.each_cons(2) do |x, y|
  if a_set.include?(x) && a_set.include?(y)
    puts 'Yes'
    exit
  end
end
puts 'No'
