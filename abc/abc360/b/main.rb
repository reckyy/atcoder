#!/usr/bin/env ruby
s, t = gets.split
s = s.chars
(1...s.length).each do |w|
  a = s.each_slice(w)
  (1..w).each do |c|
    ans = ''
    a.each { |v| ans += v[c - 1] if v[c - 1] }
    if ans == t
      puts 'Yes'
      exit
    end
  end
end
puts 'No'
