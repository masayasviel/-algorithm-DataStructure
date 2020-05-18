# https://atcoder.jp/contests/arc073/tasks/arc073_a

N, T = gets.chomp.split(" ").map(&:to_i)
inputs = gets.chomp.split(" ").map(&:to_i)
ans = 0
time_lag = []
(N-1).times do |i|
    time_lag << inputs[i+1] - inputs[i]
end

time_lag.each do |i|
    ans += T > i ? i : T
end

puts ans+T