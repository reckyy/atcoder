#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
a = Array.new(n) { [] }

m.times do
  input = gets.split.map(&:to_i)
  a[input[0] - 1] << input[1]
  a[input[1] - 1] << input[0]
end
a.each do |v|
  puts v.empty? ? 0 : "#{v.length} #{v.sort.join(' ')}"
end
