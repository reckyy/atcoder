#!/usr/bin/env ruby
s = gets.chomp.chars
t = s.length
if t.odd?
  puts 'No'
  exit
end

s.each_slice(2) do |v|
  if v[0] != v[1]
    puts 'No'
    exit
  end
end

if s.uniq.count != t / 2
  puts 'No'
  exit
end

puts 'Yes'
