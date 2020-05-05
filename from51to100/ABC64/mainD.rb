n = gets.chomp.to_i
s = gets.chomp.split("")
opens = 0
closes = 0

s.each do |i|
    if i == "(" then
        opens += 1
    else
        opens -= 1 if opens > 0
    end
end

s.reverse!

s.each do |i|
    if i == ")" then
        closes += 1
    else
        closes -= 1 if closes > 0
    end
end

s.reverse!

puts "(" * closes + s.join("") + ")" * opens