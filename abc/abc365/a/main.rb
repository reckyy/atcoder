#!/usr/bin/env ruby
y = gets.to_i
mod_4 = y % 4 == 0
mod_100 = y % 100 == 0
mod_400 = y % 400 == 0

if !mod_4 || (mod_100 && !mod_400)
  puts 365
elsif mod_400 || (mod_4 && !mod_100)
  puts 366
end
