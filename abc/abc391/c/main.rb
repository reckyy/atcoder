#!/usr/bin/env ruby
n, q = gets.split.map(&:to_i)
pigeon_nest = Array.new(n, 1)
pigeon_place = (1..n).map { |index| [index, index] }.to_h
ans = 0

q.times do
  query = gets.split.map(&:to_i)

  if query[0] == 1
    p = query[1]
    h = query[2]
    from = pigeon_place[p]
    to = h

    ans -= 1 if pigeon_nest[from - 1] == 2
    pigeon_nest[from - 1] -= 1

    pigeon_nest[to - 1] += 1
    ans += 1 if pigeon_nest[to - 1] == 2
    
    pigeon_place[p] = to
  else
    puts ans
  end
end
