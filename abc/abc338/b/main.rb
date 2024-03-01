#!/usr/bin/env ruby
s = gets.chomp
s_count = s.each_char.tally
frequency_max = s_count.values.max == 1 ? 0 : s_count.values.max
s_count.reject!{ |k, v| v < frequency_max }
puts s_count.sort.first[0]

