#!/usr/bin/env ruby
n, q = gets.split.map(&:to_i)
left_part = 1
right_part = 2
ans = 0

def move(from, to, ng, n)
  return 0 if from == to

  from, to = to, from if from > to

  if from < ng && ng < to
    n + from - to
  else
    to - from
  end
end

q.times do
  h, t = gets.chomp.split
  t = t.to_i

  if h == 'R'
    next if t == right_part

    ans += move(right_part, t, left_part, n)
    right_part = t
  else
    next if t == left_part

    ans += move(left_part, t, right_part, n)
    left_part = t
  end
end

puts ans
