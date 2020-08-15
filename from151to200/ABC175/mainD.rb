n, k = gets.chomp.split.map(&:to_i)
perm = gets.chomp.split.map(&:to_i)
nums = gets.chomp.split.map(&:to_i)
ans = -(1 << 40)

n.times do |i|
    s = nums[i]
    dp = [s]
    idx_p = perm[i] - 1
    while idx_p != i do
        s += nums[idx_p]
        dp << s
        idx_p = perm[idx_p] - 1
    end
    dp.size.times do |j|
        rest = k - j - 1
        break if rest < 0
        tmp = dp[j] + (rest / dp.size) * (s > 0 ? s : 0)
        ans = tmp if ans < tmp
    end
end

puts ans