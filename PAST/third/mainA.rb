s = gets.chomp
t = gets.chomp
ans1 = s === t
ans2 = s.downcase === t.downcase

if ans1 then
    puts "same"
elsif ans2 then
    puts "case-insensitive"
else
    puts "different"
end