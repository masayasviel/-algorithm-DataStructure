n = gets.chomp.to_f
r = gets.chomp.split("")
res = 0.0
r.each do |i|
    case i
    when "A" then
        res += 4.0
    when "B" then
        res += 3.0
    when "C" then
        res += 2.0
    when "D" then
        res += 1.0
    else
        res += 0.0
    end
end

puts res / n