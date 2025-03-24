#!/usr/bin/env ruby
s = gets.to_i
a = Set.new([s])
def f(n)
  n.even? ? (n / 2) : (3 * n) + 1
end
m = 0
(2..(10 ** 6)).each do |i|
  am = f(s)
  if a.include?(am)
    puts i
    exit
  end
  a.add(am)
  s = am
end
