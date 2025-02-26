#!/usr/bin/env ruby
n = gets.chomp.to_i
s = readlines(chomp: true)
s.sort_by!{ |str| str.length }
puts s.join
