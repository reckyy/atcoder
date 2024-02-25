#!/usr/bin/env ruby
#以下だとTLE。String#trを使えばよかった。
n = gets.to_i
s = gets
q = gets.to_i
cd = readlines(chomp: true).map{|line| line.split(' ')}

q.times { |i|
  s = s.gsub(cd[i][0], cd[i][1])
}

puts s
