#!/usr/bin/env ruby
# refer to answer
a, b, c, d, e = gets.split.map(&:to_i)
score = {'A' => a, 'B' => b, 'C' => c, 'D' => d, 'E' => e}
name = ('A'..'E').to_a
ans = Hash.new{}

(1..5).each do |i|
  name.combination(i) do |pattern|
    ans[pattern.join] = score.values_at(*pattern).sum
  end
end
ans = ans.sort_by { |k, v| [-v, k] }

ans.each do |k, _|
  puts k
end
