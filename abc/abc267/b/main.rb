#!/usr/bin/env ruby
s = gets.chomp
a = Array.new(7, false)
columns = Array.new(7) { false }

(0..9).each do |i|
  next unless s[i] == '1'
  case i
  when 6 then columns[0] = true
  when 3 then columns[1] = true
  when 1,7 then columns[2] = true
  when 0,4 then columns[3] = true
  when 2,8 then columns[4] = true
  when 5 then columns[5] = true
  when 9 then columns[6] = true
  end
end

if s[0] == '0'
  split = false
  (0..6).each do |i|
    (i+1..6).each do |j|
      if columns[i] && columns[j]
        split = true if columns[(i+1)...j].any? { |c| c == false }
      end
    end
  end
  puts split ? 'Yes' : 'No'
else
  puts 'No'
end
