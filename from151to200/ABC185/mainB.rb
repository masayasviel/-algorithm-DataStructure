N, M, T = gets.chomp.split.map(&:to_i)
remain = N
current = 0
ans = true

M.times do
    a, b = gets.chomp.split.map(&:to_i)
    remain -= a - current
    ans = false if remain <= 0
    remain = [remain+(b-a), N].min
    current = b
end

remain -= T - current
ans = false if remain <= 0

puts ans ? "Yes" : "No"