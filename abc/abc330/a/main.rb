#!/usr/bin/env ruby
n, l = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)

puts a.select { |score| score >= l }.count
