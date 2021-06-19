res = (gets.chomp.to_i * 1.08).floor

if res < 206 then
    puts "Yay!"
elsif res == 206 then
    puts "so-so"
else
    puts ":("
end