a = gets.chomp.to_i
b = gets.chomp.to_i

if a == b then
    puts "EQUAL"
elsif a < b then
    puts "LESS"
else
    puts "GREATER"
end