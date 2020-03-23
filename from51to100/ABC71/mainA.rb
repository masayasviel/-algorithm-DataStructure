x, a, b = gets.chomp.split(" ").map(&:to_i)
puts (x-a).abs < (x-b).abs ? "A" : "B"