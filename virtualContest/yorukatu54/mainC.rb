# https://atcoder.jp/contests/abc149/tasks/abc149_d

N, K = gets.chomp.split(" ").map(&:to_i)
R, S, P = gets.chomp.split(" ").map(&:to_i)
t = gets.chomp.split("")
flag = Array.new(N, true)
ans = 0

N.times do |i|
    if K <= i && t[i-K] == t[i] then
        if flag[i-K] then
            flag[i] = false
            next
        end
    end
    case t[i]
    when "r"
        ans += P
    when "s"
        ans += R
    when "p"
        ans += S
    end
end

puts ans