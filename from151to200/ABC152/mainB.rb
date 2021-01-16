a, b = gets.chomp.split.map(&:to_i)
if a < b then
    puts "#{a}" * b
else
    puts "#{b}" * a
end