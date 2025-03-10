#!/usr/bin/env ruby
n, m = gets.chomp.split.map(&:to_i)
switches = []
m.times do
  input = gets.chomp.split.map(&:to_i)
  switches << { count: input[0], list: input[1..-1] }
end
p = gets.chomp.split.map(&:to_i)

ans = 0

(0...(2 ** n)).each do |i|
  all_lights_on = true

  m.times do |j|
    on_count = switches[j][:list].count { |s| (i & (2 ** (s - 1))) != 0 }
    if on_count % 2 != p[j]
      all_lights_on = false
      break
    end
  end

  ans += 1 if all_lights_on
end

puts ans
