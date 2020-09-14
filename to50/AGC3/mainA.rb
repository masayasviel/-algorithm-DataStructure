s = gets.chomp
is_north = s.include?("N")
is_south = s.include?("S")
is_west = s.include?("W")
is_east = s.include?("E")
puts is_north == is_south && is_west == is_east ? "Yes" : "No"