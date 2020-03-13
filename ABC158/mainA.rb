s =  gets.chomp
ans = s.count("A") < 3 && s.count("B") < 3
puts ans ? "Yes" : "No"