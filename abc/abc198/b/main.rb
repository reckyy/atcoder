#!/usr/bin/env ruby
n = gets.chomp.chars

(0..(n.length - 1)).each do |i|
  n.unshift('0') if i > 0

  div, mod = n.length.divmod(2)
  half_size = mod == 0 ? div : div + 1

  half_front = n.slice(0, half_size)
  back_slice_start = mod == 0 ? half_size : half_size - 1
  back_front = n.slice(back_slice_start, half_size).reverse

  if half_front == back_front
    puts 'Yes'
    exit
  end
end

puts 'No'
