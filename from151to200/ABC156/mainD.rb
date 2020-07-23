$MOD = 10 ** 9 + 7

def modpow(_n, _pp)
    r = 1
    n = _n
    pp = _pp
    while pp > 0
        r = (r*n) % $MOD if pp&1 == 1
        n = (n*n) % $MOD
        pp = pp >> 1
    end
    return r
end

def fermatComb(n, k)
    fermatComb(n, n - k) if k > n - k
    denominator = 1 # 分母
    numerator = 1 # 分子
    k.times do |i|
        denominator *= (n - i)
        denominator %= $MOD
        numerator *= (i + 1)
        numerator %= $MOD
    end

    return denominator * modpow(numerator, $MOD - 2) % $MOD
end

n, a, b = gets.chomp.split.map(&:to_i)
ans = modpow(2, n) - 1
ans -= (fermatComb(n, a) + fermatComb(n, b)) % $MOD

puts ans % $MOD