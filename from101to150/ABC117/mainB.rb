gets
side = gets.chomp.split(" ").map(&:to_i)
max_length = side.max
side.delete_at(side.index(max_length))
puts max_length < side.inject(:+) ? "Yes" : "No"