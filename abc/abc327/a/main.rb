#!/usr/bin/env ruby
n = gets.to_i
s = gets.chomp.chars
s.each_cons(2) do |v|
  if v.join == 'ab' || v.join == 'ba'
    puts 'Yes'
    exit
  end
end
puts 'No'
