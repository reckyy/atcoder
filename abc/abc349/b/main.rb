#!/usr/bin/env ruby
s = gets.chomp.chars
just_string = s.to_set
char_with_time = just_string.to_h { |c| [c, s.count(c)] }

appear_times = char_with_time.values
appear_times.to_set.each do |n|
  if  appear_times.count(n) != 0 && appear_times.count(n) != 2
    puts "No"
    exit
  end
end
puts "Yes"
