n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
MOD = 1000000007
mult = a.sum
ans = 0
n.times do |i|
    mult -= a[i]
    ans += ((mult % MOD) * a[i]) % MOD
end
puts ans % MOD