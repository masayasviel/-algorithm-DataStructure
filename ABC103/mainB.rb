s = gets.chomp
t = gets.chomp
str = s << s
puts str.include?(t) ? "Yes" : "No"