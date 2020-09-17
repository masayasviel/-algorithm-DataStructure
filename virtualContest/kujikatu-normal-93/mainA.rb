# https://atcoder.jp/contests/dwacon6th-prelims/tasks/dwacon6th_prelims_a

n = gets.chomp.to_i
titles = []
seconds = []
n.times do
    a, b = gets.chomp.split
    titles << a
    seconds << b.to_i
end
x = gets.chomp
ans = 0
count_flag = false
n.times do |i|
    ans += seconds[i] if count_flag
    count_flag = true if x == titles[i]
end
puts ans