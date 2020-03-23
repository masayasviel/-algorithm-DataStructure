inputs = gets.chomp.split(" ").map(&:to_i).sort
puts inputs[0] + inputs[1]