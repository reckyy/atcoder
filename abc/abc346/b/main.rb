#!/usr/bin/env ruby
w, b = gets.chomp.split(" ").map(&:to_i)

s = 'wbwbwwbwbwbw'.chars
sum = w + b
s *= (sum.ceildiv(12)) if s.length < sum

s.each_cons(sum) { |v|
  if v.count('w') == w && v.count('b') == b
    puts 'Yes'
    exit
  end
}
puts 'No'
