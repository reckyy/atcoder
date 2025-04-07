#!/usr/bin/env ruby
s = gets.chomp.chars
puts s.index('R') < s.index('M') ? 'Yes' : 'No'
