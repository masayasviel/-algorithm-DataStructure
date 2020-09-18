# https://atcoder.jp/contests/abc139/tasks/abc139_b

a, b = gets.chomp.split.map(&:to_i)

if b == 1 then
    puts 0
else
    ans = 1
    res = a
    while res < b do
        res += a-1
        ans += 1
    end
    puts ans
end