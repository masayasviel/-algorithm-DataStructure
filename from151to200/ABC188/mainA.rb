x, y = gets.chomp.split.map(&:to_i).sort
puts x+3 > y ? "Yes" : "No"