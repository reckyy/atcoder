#!/usr/bin/env ruby
#以下はTLE。
n = gets.to_i
a = gets.chomp.split(" ").map(&:to_i)
count = 0

0.upto(n - 1) {|i|
  (i + 1).upto(n - 1) {|j|
    ij = a[i] * a[j]
    sqrt = Integer.sqrt(ij)
    count += 1 if sqrt ** 2 == ij
  }
}
puts count
