#!/usr/bin/env ruby
n = gets.to_i
cnt = 0
n.times do
  a = gets.chomp.split(' ').map(&:to_i)
  indexs = []
  a.each.with_index(1) do |v, i|
    indexs << i if v == 1
  end
  if indexs.any?
    puts indexs.join(' ')
    cnt += 1
  end
end
puts if cnt == 0
