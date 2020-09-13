def modpow(x, y, mod)
    res = 1
    y.times do
        res *= x
        res %= mod
    end
    return res
end

MOD = 1000000007
n = gets.chomp.to_i
ans = modpow(10, n, MOD) - modpow(9, n, MOD) * 2 + modpow(8, n, MOD)
ans %= MOD
puts (ans+MOD) % MOD