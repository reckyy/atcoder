#!/usr/bin/env ruby
# give up
n = gets.chomp.to_i
people = []
names = {}
n.times do
  s, t = gets.chomp.split
  people << [s, t]
  names[s] ||= 0
  names[t] ||= 0
  names[s] += 1
  names[t] += 1
end

ans = people.all? do |s, t|
  (names[s] == 1) || (names[t] == 1)
end

puts ans ? 'Yes' : 'No'


# my bad code
=begin
n = gets.chomp.to_i
first_names = []
last_names = []
n.times do
  s, t = gets.chomp.split
  first_names << s
  last_names << t
end

nicknames = []
first_names.zip(last_names).each do |first_name, _|
  if !nicknames.include?(first_name)
    nicknames << name[0]
  elsif !nicknames.include?(name[1])
    nicknames << name[1]
  else
    puts 'No'
    exit
  end
end

puts 'Yes'
=end
