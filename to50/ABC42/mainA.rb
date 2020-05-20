s = gets.chomp.split(" ").map(&:to_i)
puts s.count(5) == 2 && s.count(7) == 1 ? "YES" : "NO"