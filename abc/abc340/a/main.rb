#!/usr/bin/env ruby
a,b,d = gets.chomp.split(" ").map(&:to_i)

if a != b
  print "#{a}"
  loop do
    a += d
    if a < b
      print " #{a}"
    elsif a == b
      puts " #{a}"
      break
    end
  end
else
  puts "#{a}"
end

#コンパクトな解き方
a, b, d = gets.chomp.split.map(&:to_i)
puts (0..((b - a) / d)).map {|i| a + i * d }.join(" ")
