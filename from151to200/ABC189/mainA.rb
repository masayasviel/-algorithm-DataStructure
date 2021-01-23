c = gets.chomp.chars
puts c.all?{|v| v == c[0]} ? "Won" : "Lost"