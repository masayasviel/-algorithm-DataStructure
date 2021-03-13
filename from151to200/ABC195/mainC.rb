n = gets.chomp.to_i
d = n.digits.size

if d < 4 then
    puts 0
elsif d < 7 then
    puts n-1000+1
elsif d < 10 then
    puts (n - 999999)*2 + 999000
elsif d < 13 then
    puts (n - 999999999)*3 + 1998999000
elsif d < 16 then
    puts (n - 999999999999)*4 + 2998998999000
else
    puts 3998998998999005
end