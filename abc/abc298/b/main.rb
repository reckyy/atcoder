#!/usr/bin/env ruby
n = gets.to_i
a = Array.new(n) { gets.split.map(&:to_i) }
b = Array.new(n) { gets.split.map(&:to_i) }
def rotate(matrix)
  n = matrix.size
  rotated = Array.new(n) { Array.new(n) }
  (0...n).each do |i|
    (0...n).each do |j|
      rotated[i][j] = matrix[j][n - 1 - i]
    end
  end
  rotated
end

4.times do
  valid = true
  (0...n).each do |i|
    (0...n).each do |j|
      if a[i][j] == 1 && b[i][j] != 1
        valid = false
        break
      end
    end
    break unless valid
  end
  if valid
    puts 'Yes'
    exit
  end
  a = rotate(a)
end

puts 'No'
