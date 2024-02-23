#!/usr/bin/env ruby
lines = []
lines = readlines(chomp: true).map{|line| line.split(' ').map(&:to_i)}

street = Array.new(lines[0][0]){0}
lines.shift
lines.each do |line|
  line.each{ |elm| street[elm - 1] += 1}
end
street.each { |s| puts s }

