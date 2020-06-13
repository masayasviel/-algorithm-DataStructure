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

x, y = gets.chomp.split(" ").map(&:to_i)
n = (2 * y - x) / 3
m = (2 * x - y) / 3

if (x+y) % 3 == 0 then
    max = 10 ** 6
    comb = ModCombination.new(max)
    puts comb.com(n+m, n)
else
    puts 0
end