#!/usr/bin/env ruby
n, m = gets.chomp.split.map(&:to_i)
student_coordinates = []
n.times do
  student_coordinates << gets.chomp.split.map(&:to_i)
end
checkpoint_coordinates = []
m.times do
  checkpoint_coordinates << gets.chomp.split.map(&:to_i)
end

ans = []
check_points = []
student_coordinates.each do |sc|
  distances = []
  checkpoint_coordinates.each.with_index(1) do |cc, idx|
    distances << (cc[0] - sc[0]).abs + (cc[1] - sc[1]).abs
  end

  check_points << distances.index(distances.min) + 1
end

check_points.each { |check_point| puts check_point }
