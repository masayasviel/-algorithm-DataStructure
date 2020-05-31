# https://atcoder.jp/contests/abc112/tasks/abc112_d

n, m = gets.chomp.split(" ").map(&:to_i)
divisor = []
i = 1
while i * i <= m
    if m % i == 0 then
        divisor << i
        tmp = m / i
        divisor << tmp if tmp != i
    end
    i += 1
end
divisor.sort!
ans = -1
divisor.each do |e|
    break if m/n < e
    ans = e
end

puts ans