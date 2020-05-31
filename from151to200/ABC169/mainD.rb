require 'prime'
n = gets.chomp.to_i
ans = 0
divisor = []
i = 1
while i * i <= n
    if n % i == 0 then
        divisor << i
        tmp = n / i
        divisor << tmp if tmp != i
    end
    i += 1
end
divisor.sort!

divisor.each do |e|
    break if n < e
    if Prime.prime_division(e).size == 1 then
        next if n % e != 0
        n /= e
        ans += 1
    end
end

puts ans