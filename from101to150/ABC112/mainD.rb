n, m = gets.chomp.split(" ").map(&:to_i)
divisor = []

i = 1
while i * i <= m
    if m % i == 0 then
        divisor << i
        tmp = m / i
        divisor << tmp if tmp != i
    end
    i += 1
end

divisor.sort!

ans = 0
divisor.each do |i|
    ans = i > ans ? i : ans if i * n <= m
end
puts ans