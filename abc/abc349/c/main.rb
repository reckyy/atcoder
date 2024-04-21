#!/usr/bin/env ruby
s = gets.chomp.chars
t = gets.chomp.downcase.chars


if t[2] == 'x'
  count = 0
  s.each do |c|
    count += 1 if c == t[count]
    if count == 2
      puts "Yes"
      exit
    end
  end
end

count = 0
s.each do |c|
  count += 1 if c == t[count]
  if count == 3
    puts "Yes"
    exit
  end
end

puts "No"
