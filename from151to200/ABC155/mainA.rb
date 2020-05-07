arr = gets.chomp.split(" ").map(&:to_i)

if arr.uniq.size == 2 then
    puts "Yes"
else
    puts "No"
end