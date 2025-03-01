#!/usr/bin/env ruby
n, m = gets.chomp.split.map(&:to_i)
s = n.times.map { gets.chomp }
t = m.times.map { gets.chomp }

(0..(n - m)).each do |col|
  (0..(n - m)).each do |row|
    match = true
    (0...m).each do |i|
      (0...m).each do |j|
        if s[col + i][row + j] != t[i][j]
          match = false
          break
        end
      end
      break unless match
    end

    if match
      puts "#{col + 1} #{row + 1}"
      exit
    end
  end
end
