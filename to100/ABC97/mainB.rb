x = gets.chomp.to_i
ans = []

if x == 1
    puts 1
    exit
end

(2..Math.sqrt(x).floor).each do |i|
    j = 0
    while x >= i**j
        ans.push(i**j)
        j += 1
    end
end

puts ans.max