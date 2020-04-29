n = gets.chomp.to_i

if n % 2 != 0
    puts 0
    exit
end

ans = 0
n /= 2
while n > 0
    ans += n / 5
    n /= 5
end

puts ans