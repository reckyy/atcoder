#!/usr/bin/env ruby
n, k = gets.chomp.split.map(&:to_i)
ans = (1..n).map{ |key| [key, false] }.to_h

k.times do
  d = gets.chomp.to_i
  a = gets.chomp.split.map(&:to_i)

  a.each do |candy_number|
    ans[candy_number] = true
  end
end

puts ans.values.count { |v| v == false }
