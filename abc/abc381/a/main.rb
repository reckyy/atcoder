#!/usr/bin/env ruby
n = gets.to_i
s = gets.chomp
if s == '/'
  puts 'Yes'
  exit
end
split_s = s.split('/')
if (split_s.length == 2) && (split_s[0] == '1' * ((n - 1) / 2)) && (split_s[1] == '2' * ((n - 1) / 2))
  puts 'Yes'
else
  puts 'No'
end
