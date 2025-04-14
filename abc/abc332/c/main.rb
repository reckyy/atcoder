#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
s = gets.split('').map(&:to_i)
shirt = m
logo_shirt = 0
needed_logo = 0
s.each do |schedule|
  case schedule
  when 0 then shirt, logo_shirt = m, needed_logo
  when 1 then shirt == 0 ? (logo_shirt == 0 ? needed_logo += 1 : logo_shirt -= 1) : shirt -= 1
  when 2 then logo_shirt == 0 ? needed_logo += 1 : logo_shirt -= 1
  end
end
puts needed_logo
