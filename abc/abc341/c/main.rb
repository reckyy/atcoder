#!/usr/bin/env ruby
h, w, n = gets.split.map(&:to_i)
t = gets.chomp.chars
s = Array.new(h) { gets.chomp.chars }
ans = 0
(0...h).each do |i|
  (0...w).each do |j|
    x, y = i, j
    next if s[x][y] == '#'
    valid = true

    t.each do |direction|
      case direction
      when 'L' then y -= 1
      when 'R' then y += 1
      when 'U' then x -= 1
      when 'D' then x += 1
      end
      if s[x].nil? || s[x][y].nil? || s[x][y] != '.'
        valid = false
        break
      end
    end
    ans += 1 if valid
  end
end
puts ans
