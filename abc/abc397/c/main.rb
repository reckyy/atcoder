#!/usr/bin/env ruby
n = gets.to_i
a = gets.split.map(&:to_i)
front_set = Set.new
last_counter = Hash.new(0)
a.each { |num| last_counter[num] += 1 }
answer = 0

(0...n).each do |i|
  front_set.add(a[i])
  last_counter[a[i]] -= 1
  last_counter.delete(a[i]) if last_counter[a[i]].zero?

  answer = [answer, front_set.length + last_counter.length].max
end


puts answer

