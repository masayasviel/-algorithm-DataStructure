n, m = gets.chomp.split(" ").map(&:to_i)
mod = 1000000007
big = n > m ? n : m
small =  n > m ? m : n
if big-1 > small 
    puts 0
    exit
end

dog = 1
monkey = 1
(1..n).each do |i|
    dog *= i
    dog %= mod
end
(1..m).each do |i|
    monkey *= i
    monkey %= mod
end

if n == m then
    dog = dog * 2 % mod
    puts (dog * monkey) % mod
else
    puts (dog * monkey) % mod
end