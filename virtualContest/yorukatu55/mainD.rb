# https://atcoder.jp/contests/arc067/tasks/arc067_b

N, A, B = gets.chomp.split(" ").map(&:to_i)
x = gets.chomp.split(" ").map(&:to_i)
walk_fatigue = []
(1...N).each do |i|
    walk_fatigue << (x[i] - x[i-1]) * A
end
ans = 0
walk_fatigue.each do |e|
    ans += e > B ? B : e
end
puts ans