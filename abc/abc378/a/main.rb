#!/usr/bin/env ruby
a = gets.split.map(&:to_i).tally
ans = 0
a.each { |_, v| ans += (v / 2) }
puts ans
