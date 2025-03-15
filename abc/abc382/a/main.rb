#!/usr/bin/env ruby
n, d = gets.split.map(&:to_i)
s = gets.chomp.chars

cookies = s.count { |str| str == '@' }
puts s.length - (cookies - d)
