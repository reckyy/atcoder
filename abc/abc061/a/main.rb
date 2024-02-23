#!/usr/bin/env ruby
a,b,c = gets.chomp.split(" ").map(&:to_i)
word = (c >= a && c <= b) ? "Yes" : "No"
puts word
