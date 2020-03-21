a, b, c = gets.chomp.split(" ").map(&:to_i)
d = c - a - b
if d < 0
    puts "No"
else
    puts 4*a*b < d*d ? "Yes" : "No"
end