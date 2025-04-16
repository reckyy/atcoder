#!/usr/bin/env ruby
r, c = gets.split.map(&:to_i)
b = Array.new(r) { gets.chomp.chars }
b_dash = Array.new(r) { Array.new(c, false) }
r.times do |i|
  c.times do |j|
    if '1' <= b[i][j] && b[i][j] <= '9'
      d = b[i][j].to_i
      ([i-d, 0].max..[i+d, r-1].min).each do |k|
        f = d - (k-i).abs
        ([j-f, 0].max..[j+f, c-1].min).each do |l|
          b_dash[k][l] = true
        end
      end
    end
  end
end
r.times do |i|
  c.times do |j|
    b[i][j] = '.' if b_dash[i][j]
  end
end
b.each { |v| puts v.join }
