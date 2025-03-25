#!/usr/bin/env ruby
s = gets.chomp.split('')
s.delete('.')
puts s.empty? ? '' : s.join
