n, x = gets.chomp.split.map(&:to_i)
s = gets.chomp.split("")

s.each do |i|
    if i == "o" then
        x += 1
    else
        x = [x-1, 0].max
    end
end

puts x