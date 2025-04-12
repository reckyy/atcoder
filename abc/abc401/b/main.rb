#!/usr/bin/env ruby
n = gets.to_i
s = Array.new(n) { gets.chomp }
logged_in = false
error_count = 0
s.each do |char|
  case char
  when 'public' then next
  when 'login' then logged_in = true
  when 'logout' then logged_in = false
  when 'private' then error_count += 1 unless logged_in
  end
end
puts error_count
