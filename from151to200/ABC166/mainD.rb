x = gets.chomp.to_i
if x == 1
    puts "0 -1"
    exit
end
a = 1
multiplier = [-1, 1]
b = 1

while !multiplier.include?(a ** 5 - x) 
    a += 1
    tmp = a**5
    multiplier.push(tmp)
    multiplier.unshift(-1*tmp)
end

loop do
    if b ** 5 == a ** 5 - x
        break
    end
    if (-1 * b) ** 5 == a ** 5 - x
        b *= -1
        break
    end
    b += 1
end

puts [a, b].join(" ")