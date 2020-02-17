str=gets.chomp.split("")
sum = 0
str.each do |i|
    sum += 1 if i == "+"
    sum -= 1 if i == "-"
end

puts sum