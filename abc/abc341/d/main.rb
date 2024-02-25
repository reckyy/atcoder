#!/usr/bin/env ruby
#二分探索法。


#以下は没。
n,m,k = gets.chomp.split(" ").map(&:to_i)
div_number = 0
count = 0

k.times {
  count.upto(100 ** 100) { |i|
    if (i % n == 0 && i % m != 0) || (i % n != 0 && i % m == 0)
      count = i + 1
      break
    end
  }
}
puts count - 1
