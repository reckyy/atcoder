#!/usr/bin/env ruby
m = gets.chomp.to_i
d = gets.chomp.split.map(&:to_i)
answer_day = (d.sum + 1) / 2

if m == 1
  puts "#{1} #{answer_day}"
  exit
end

answer_month_index = 0
count = 0

d.each_with_index do |day, i|
  count += day

  if count >= answer_day
    answer_month_index = i
    break
  end
end

days_to_answer_month = d[0...(answer_month_index)].sum
(d[answer_month_index]).times do |i|
  days_to_answer_month += 1

  if days_to_answer_month == answer_day
    puts "#{answer_month_index + 1} #{i + 1}"
    exit
  end
end
