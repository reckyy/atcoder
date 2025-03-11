#!/usr/bin/env ruby
# refer to answer, sp8783
q = gets.to_i
snake_positions = []
snake_length = 0
removed_count = 0

q.times do
  query1, query2 = gets.split.map(&:to_i)
  
  case query1
  when 1
    snake_positions.push(snake_length)
    snake_length += query2
  when 2
    removed_count += 1
  when 3
    puts snake_positions[removed_count + query2 - 1] - snake_positions[removed_count]
  end
end
