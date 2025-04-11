#!/usr/bin/env ruby
#!/usr/bin/env ruby
n, t = gets.split.map(&:to_i)
a_list = gets.split.map(&:to_i)
row = Array.new(n, 0)
col = Array.new(n, 0)
diag1 = 0
diag2 = 0

a_list.each_with_index do |num, i|
  r = (num - 1) / n
  c = (num - 1) % n
  row[r] += 1
  col[c] += 1
  diag1 += 1 if r == c
  diag2 += 1 if r + c == n - 1

  if row[r] == n || col[c] == n || diag1 == n || diag2 == n
    puts i + 1
    exit
  end
end

puts -1
