#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = []
min = a.min

b.each do |sushi|
  if sushi < min
    ans << -1
  else
    a.each.with_index(1) do |quelity, i|
      if sushi >= quelity
        ans << i
        break
      end
    end
  end
end

ans.each do |num|
  puts num
end
