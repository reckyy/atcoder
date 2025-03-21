#!/usr/bin/env ruby
n = gets.to_i
a = Array.new(n) { gets.chomp.chars }
(0...(n / 2)).each do |i|
  square = a[i...(n-i)].map { |row| row[i...(n-i)] }

  rotated = square.transpose.map(&:reverse)

  (0...(n - 2*i)).each do |x|
    (0...(n - 2*i)).each do |y|
      a[i + x][i + y] = rotated[x][y]
    end
  end
end
a.each do |array|
  puts array.join
end
