#!/usr/bin/env ruby
n, k = gets.split.map(&:to_i)
s = gets.chomp.chars
sliced_s = s.slice_when { |i, j| i != j }.to_a
counter = 0
index = 0
swap_chars = []
sliced_s.each_with_index do |ss, i|
  if ss[0] == '1'
    counter += 1
    index = i + 1 if counter == (k - 1)
  end

  if counter == k
    sliced_s[index], sliced_s[i] = sliced_s[i], sliced_s[index]
    break
  end
end

puts sliced_s.join
