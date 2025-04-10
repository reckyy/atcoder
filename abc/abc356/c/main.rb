#!/usr/bin/env ruby
n, m, k = gets.split.map(&:to_i)
input = Array.new(m) { gets.chomp.split }
used_times = (1..n).map { |i| [i, 0] }.to_h
input.each do |v|
  if v.last == 'o'
    (1..v[0].to_i).each { |i| used_times[v[i].to_i] += 1 }
  else
    real_keys = (1..n).to_a - v[1..v[0].to_i].map(&:to_i)
    real_keys.each { |i| used_times[i] += 1 }
  end
  p used_times
end
