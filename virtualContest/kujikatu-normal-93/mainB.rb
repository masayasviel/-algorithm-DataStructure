# https://atcoder.jp/contests/abc157/tasks/abc157_b

bingo = Array.new(3).map{Array.new(3, false)}
a = []
3.times do
    a << gets.chomp.split.map(&:to_i)
end
n = gets.chomp.to_i
n.times do
    b = gets.chomp.to_i
    3.times do |i|
        3.times do |j|
            bingo[i][j] = true if b == a[i][j]
        end
    end
end
ans = false
3.times do |i|
    ans = bingo[0][i] && bingo[1][i] && bingo[2][i]
    break if ans
    ans = bingo[i][0] && bingo[i][1] && bingo[i][2]
    break if ans
end
if ans then
    puts "Yes"
else
    res1 = bingo[0][0] && bingo[1][1] && bingo[2][2]
    res2 = bingo[0][2] && bingo[1][1] && bingo[2][0]
    puts res1 || res2 ? "Yes" : "No"
end