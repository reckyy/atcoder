#!/usr/bin/env ruby
n, k = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
puts "#{a.slice((n - k)..n).join(' ')} #{a.slice(0...(n - k)).join(' ')}"
