#!/usr/bin/env ruby
n, r, c = gets.split.map(&:to_i)
s = gets.chomp.chars
dir = { 'N' => [-1, 0], 'S' => [1, 0], 'W' => [0, -1], 'E' => [0,1] }
