#!/usr/bin/env ruby
s = gets.chomp.split
case s
when ['<', '<', '<'] then puts 'B'
when ['<', '<', '>'] then puts 'C'
when ['<', '>', '>'] then puts 'A'
when ['>', '<', '<'] then puts 'A'
when ['>', '>', '<'] then puts 'C'
when ['>', '>', '>'] then puts 'B'
end
