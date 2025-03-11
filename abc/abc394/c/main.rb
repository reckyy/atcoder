#!/usr/bin/env ruby
# refer to answer
s = gets.chomp.chars
i = 0

while(i < s.length - 1)
  if (s[i] == 'W') && (s[i + 1] == 'A')
    s[i] = 'A'
    s[i + 1] = 'C'
    i -= 1 if i > 0
  else
    i += 1
  end
end

puts s.join
