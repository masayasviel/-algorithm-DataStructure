n = gets.chomp.to_i
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
divisor_num = divisor.size

if divisor_num & 1 == 1 then
    puts (divisor[divisor_num/2] - 1) * 2
else
    puts divisor[divisor_num/2] + divisor[divisor_num/2-1] - 2
end