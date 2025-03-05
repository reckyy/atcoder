#!/usr/bin/env ruby
#give up
x, k = gets.chomp.split
k = k.to_i
ans = x.chars.map(&:to_i).reverse

  (0...k).each do |i|
    break if i >= ans.size
  
    if ans[i] >= 5
      if (i + 1) < ans.size
        ans[i + 1] += 1
      else
        ans << 1
      end
    end
  
    ans[i] = 0
  end

puts ans.reverse.join('')

# ChatGPTに聞いた
x, k = gets.chomp.split
k = k.to_i
x = x.to_i

(0...k).each do |i|
  place = 10**i
  digit = (x / place) % 10

  if digit >= 5
    x += place * (10 - digit)
  else
    x -= digit * place
  end
end

puts x
