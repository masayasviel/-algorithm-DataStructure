# https://atcoder.jp/contests/abc042/tasks/arc058_a

n, k = gets.chomp.split(" ").map(&:to_i)
dislike = gets.chomp.split(" ").map(&:to_s)
ans = -1
num = n

while ans == -1 do
    flag = true
    str_num = num.to_s
    dislike.each do |i|
        flag = false if str_num.include?(i)
    end
    ans = num if flag
    num += 1
end

puts ans