#!/usr/bin/env ruby
n, a, b = gets.chomp.split(" ").map(&:to_i)
d = gets.chomp.split(" ").map(&:to_i)

week = Hash.new
holidays = (1..a)

(1..(a + b)).each { |v|
  week[v] = holidays.include?(v)
}

d.each { |v|
  unless week[v % (a + b)]
    puts "No"
    exit
  end
}
puts "Yes"
