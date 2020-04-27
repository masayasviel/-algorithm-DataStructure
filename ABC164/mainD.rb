s = gets.chomp.split("").map(&:to_i)
n = s.size
ans = 0
_p = 2019

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