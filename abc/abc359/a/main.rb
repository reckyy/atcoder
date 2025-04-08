#!/usr/bin/env ruby
n = gets.to_i
s = Array.new(n) { gets.chomp }
puts s.count { |str| str == 'Takahashi' }
