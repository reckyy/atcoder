#!/usr/bin/env ruby
a = gets.split.map(&:to_i)
a.sort!

if (a.uniq.count == 1) || (a[0]+a[1]==a[2])
  puts 'Yes'
else
  puts 'No'
end
