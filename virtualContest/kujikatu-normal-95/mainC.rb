# https://atcoder.jp/contests/arc069/tasks/arc069_a

n, m = gets.chomp.split.map(&:to_i)
if n >= m/2 then
    puts m/2
else
    m -= n*2
    puts n + m/4
end