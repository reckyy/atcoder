#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
s = Array.new(n) { gets.chomp.chars }.sort_by { |array| array.count('o') }.reverse

