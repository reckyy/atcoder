#!/usr/bin/env ruby
s = gets.scan(/./)
b = s.tally
puts s.index(b.key(1)) + 1
