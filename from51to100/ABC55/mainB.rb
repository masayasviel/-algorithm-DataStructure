n = gets.chomp.to_i
MOD = 1000000007
ans = 1
(1..n).each do |i|
    ans *= i
    ans = ans % MOD
end
puts ans