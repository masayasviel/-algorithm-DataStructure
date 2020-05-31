require 'bigdecimal'
require 'bigdecimal/util'
a, b = gets.chomp.split(" ").map(&:to_d)
puts (a * b).floor