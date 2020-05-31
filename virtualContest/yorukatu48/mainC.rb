# https://atcoder.jp/contests/arc069/tasks/arc069_a

n, m = gets.chomp.split(" ").map(&:to_i)
if n >= m/2 then
    puts m/2
else
    ans = n
    m -= n*2
    puts ans + m/4
end