#!/usr/bin/env ruby
h,w,x,y = gets.split.map(&:to_i)
s = Array.new(h) { gets.chomp.split('') }
t = gets.chomp.split('')
x -= 1
y -= 1
ans = 0

t.each do |direction|
  case direction
  when 'L'
    if s[x][y - 1] == '@'
      s[x][y - 1] = '.'
      y -= 1
      ans += 1
    elsif s[x][y - 1] == '.'
      y -= 1
    end
  when 'R'
    if s[x][y + 1] == '@'
      s[x][y + 1] = '.'
      y += 1
      ans += 1
    elsif s[x][y + 1] == '.'
      y += 1
    end
  when 'U'
    if s[x - 1][y] == '@'
      s[x - 1][y] = '.'
      x -= 1
      ans += 1
    elsif s[x - 1][y] == '.'
      x -= 1
    end
  when 'D'
    if s[x + 1][y] == '@'
      s[x + 1][y] = '.'
      x += 1
      ans += 1
    elsif s[x + 1][y] == '.'
      x += 1
    end
  end
end

puts "#{x + 1} #{y + 1} #{ans}"
