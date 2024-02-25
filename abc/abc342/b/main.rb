#!/usr/bin/env ruby
n = gets.to_i
p = gets.chomp.split(" ").map(&:to_i)
q = gets.to_i
ab = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}

q.times { |n|
  index = [p.index(ab[n][0]), p.index(ab[n][1])].min
  puts p[index]
}
