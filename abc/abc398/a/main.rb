#!/usr/bin/env ruby
n = gets.to_i
if (n == 1) || (n == 2)
  puts '=' * n
else
  ans = '-' * n
  if n.odd?
    ans[n / 2] = '='
  else
    ans[(n / 2) - 1] = '='
    ans[n / 2] = '='
  end
  puts ans
end
