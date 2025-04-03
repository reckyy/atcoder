#!/usr/bin/env ruby
n, t, p = gets.split.map(&:to_i)
l = gets.split.map(&:to_i).sort_by { |num| -num }
past_days = 0
passed_people = 0
l.each do |h|
  x = h + past_days
  passed_people += 1
  past_days += t - x if x < t

  if passed_people >= p
    puts past_days
    exit
  end
end
