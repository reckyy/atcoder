#!/usr/bin/env ruby
n, k = gets.split.map(&:to_i)
s = gets.chomp.chars
needed_teeth = Array.new(k, 'O')
teeth = []
ans = 0
s.each do |tooth|
  teeth << 'O' if tooth == 'O'
  teeth = [] if tooth == 'X'

  if teeth == needed_teeth
    ans += 1
    teeth = []
  end
end

puts ans
