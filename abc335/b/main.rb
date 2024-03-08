#!/usr/bin/env ruby
n= gets.to_i

0.upto(n) do |i|
  0.upto(n) do |j|
    0.upto(n) do |k|
      array = [i, j, k]
      puts array.join(' ') if array.sum <= n
    end
  end
end
