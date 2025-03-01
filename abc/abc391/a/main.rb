#!/usr/bin/env ruby
d = gets.chomp.to_sym

direction_list = { N: 'S', E: 'W', S: 'N', W: 'E', NE: 'SW', NW: 'SE', SE: 'NW', SW: 'NE' }
puts direction_list[d]
