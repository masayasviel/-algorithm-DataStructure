class ModCombination
    def initialize(max)
        @MOD = 10 ** 9 + 7
        @fact = [1, 1]
        @factinv = [1, 1]
        @inv = [0, 1]
        2.upto(max) do |i|
            @fact << @fact[i-1] * i % @MOD
            @inv << @MOD - @inv[@MOD % i] * (@MOD / i) % @MOD
            @factinv << @factinv[i-1] * @inv[i] % @MOD
        end
    end
    def com(n, k)
        return 0 if n < k
        return 0 if n < 0 || k < 0
        return @fact[n] * (@factinv[k] * @factinv[n-k] % @MOD) % @MOD
    end
end