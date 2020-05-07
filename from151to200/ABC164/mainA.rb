s, w = gets.chomp.split(" ").map(&:to_i)
puts s <= w ? "unsafe": "safe"