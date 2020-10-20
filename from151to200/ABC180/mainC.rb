N = gets.chomp.to_i
ans = []
i = 1

while i*i <= N do
    if N % i == 0 then
        ans << i
        ans << N / i if N / i != i
    end
    i += 1
end

ans.sort!

puts ans.join("\n")