n, k = gets.chomp.split(" ").map(&:to_i)
ans = 0.0
T = 1.0 / n
1.upto(n) do |i|
    j = i
    count = 0
    while j < k
        j *= 2
        count += 1
    end
    harf = 2 ** count
    ans += (1.0 / harf)
end
puts ans * T