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
