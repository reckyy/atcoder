#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
x = Array.new(n) { gets.split.map(&:to_i) }
x.each do |v|
  (0...m).each { |i| a[i] -= v[i] }
end
puts a.all? { |v| v <= 0 } ? 'Yes' : 'No'
