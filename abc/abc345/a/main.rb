#!/usr/bin/env ruby
s = gets.chomp.chars

unless s.first == '<' && s.last == '>'
  puts 'No'
  exit
end

s.shift
s.pop
s.each do |eql|
  if eql != '='
    puts 'No'
    exit
  end
end

puts 'Yes'
