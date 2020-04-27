n, _p = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp.split("").map(&:to_i)
ans = 0

if _p == 2 || _p == 5
    n.times do |i|
        ans += i+1 if s[i] % _p == 0
    end
    puts ans
    exit
end

h = Hash.new(0)
digit = 1
tmp = 0
(n-1).downto(0) do |i|
    tmp += s[i] * digit % _p
    h[tmp % _p] += 1
    digit *= 10
    digit %= _p
end

h.each do |key, value|
    ans += value * (value-1) / 2 if 2 <= value
end

puts ans + h[0]