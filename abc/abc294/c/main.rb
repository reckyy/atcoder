#!/usr/bin/env ruby
n, m = gets.split.map(&:to_i)
a = gets.split.map(&:to_i)
b = gets.split.map(&:to_i)
ans = Array.new(2) { [] }
i = 1
while((a.length > 0) && (b.length > 0))
  if a[0] < b[0]
    ans[0] << i
    a.shift
  else
    ans[1] << i
    b.shift
  end
  i += 1
end
a.length.times { ans[0] << i; i+= 1 } if a.length > 0
b.length.times { ans[1] << i; i+= 1 } if b.length > 0
ans.each { |v| puts v.join(' ') }
