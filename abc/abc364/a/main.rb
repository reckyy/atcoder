#!/usr/bin/env ruby
n = gets.to_i
a = Array.new(n) { gets.chomp }
a.each_cons(2).with_index(1) do |s, i|
  if (s == ['sweet', 'sweet']) && (i != n - 1)
    puts 'No'
    exit
  end
end
puts 'Yes'
