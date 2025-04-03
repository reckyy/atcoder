#!/usr/bin/env ruby
# solved, but TLE.
n, k = gets.split.map(&:to_i)
s = gets.chomp.chars
used = {}
ans = 0
s.permutation do |j|
  str = j.join
  next if used[str]
  used[str] = true

  ans += 1 unless j.each_cons(k).any? { |jj| jj == jj.reverse }
end
puts ans
