#!/usr/bin/env ruby
n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
a.each_cons(3) do |v|
  if v.uniq.count == 1
    puts 'Yes'
    exit
  end
end

puts 'No'
