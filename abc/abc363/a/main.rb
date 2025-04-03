#!/usr/bin/env ruby
r = gets.to_i
case r
when 1..99 then puts 100 - r
when 100..199 then puts 200 - r
when 200..299 then puts 300 - r
else puts 400 - r
end
