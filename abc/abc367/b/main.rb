#!/usr/bin/env ruby
x = gets.chomp.chars
while(x.last == '0') do x.pop end
x.pop if x.last == '.'
puts x.join
