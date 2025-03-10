#!/usr/bin/env ruby
a, b, k = gets.chomp.split.map(&:to_i)
count = 0
max = [a, b].min # [a, b].maxとしていたが、minでよかった。

max.downto(1) do |i|
  count += 1 if ((a % i) == 0) && ((b % i) == 0)

  if count == k
    puts i
    exit
  end
end
