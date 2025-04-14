#!/usr/bin/env ruby
a = Array.new(9) { gets.split.map(&:to_i) }
def stop_roop
  puts 'No'
  exit
end
a.each { |line| stop_roop if line.uniq.length != 9 }
(0..8).each do |j|
  line = []
  (0..8).each { |i| line << a[i][j] }
  stop_roop if line.uniq.length != 9
end
3.times do |i|
  xi = 0 + i * 3
  3.times do |j|
    xj = 0 + j * 3
    line = a[xi][xj..xj+2] + a[xi+1][xj..xj+2] + a[xi+2][xj..xj+2]
    stop_roop if line.uniq.length != 9
  end
end
puts 'Yes'
