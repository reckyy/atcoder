#!/usr/bin/env ruby
N, M = gets.split.map(&:to_i)
blocked = Set.new

MOVES = [
  [2, 1], [1, 2], [-1, 2], [-2, 1],
  [-2, -1], [-1, -2], [1, -2], [2, -1]
]

M.times do
  a, b = gets.split.map(&:to_i)
  blocked.add([a, b])

  MOVES.each do |dx, dy|
    nx, ny = a + dx, b + dy
    if (1..N).cover?(nx) && (1..N).cover?(ny)
      blocked.add([nx, ny])
    end
  end
end

puts (N * N - blocked.size)
