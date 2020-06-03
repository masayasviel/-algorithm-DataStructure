require 'prime'

n = gets.chomp.to_i
MOD = 10 ** 9 + 7
ans = 1
h = Hash.new(0)
 
(2..n).each do |i|
    arr = Prime.prime_division(i)
    arr.each do |num, count|
        h[num] += count
    end
end

h.each do |key, value|
    ans *= value + 1
    ans %= MOD
end

puts ans