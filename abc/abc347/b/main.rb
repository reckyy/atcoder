#!/usr/bin/env ruby
s = gets.chomp.chars
substrings = Set.new


s.length.times do |i|
  s.each_cons(i + 1) { |v|
    str = v.join
    unless substrings.include?(str)
      substrings << str
    end
}
end

puts substrings.count
