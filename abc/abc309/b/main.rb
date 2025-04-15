#!/usr/bin/env ruby
n = gets.to_i
a = Array.new(n) { gets.chomp.split('').map(&:to_i) }
b = a.map(&:dup)
(0...n-1).each { |j| b[0][j + 1] = a[0][j] }
(0...n-1).each { |j| b[j + 1][n - 1] = a[j][n - 1] }
(1...n).each { |j| b[n - 1][j - 1] = a[n - 1][j] }
(1...n).each { |j| b[j - 1][0] = a[j][0] }
b.each { |v| puts v.join }
