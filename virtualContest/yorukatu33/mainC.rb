# https://atcoder.jp/contests/abc061/tasks/abc061_c

n, k = gets.chomp.split(" ").map(&:to_i)
inputs = []
count = 0
ans = -1
n.times do
    inputs << gets.chomp.split(" ").map(&:to_i)
end
inputs.sort!{|a, b| a[0] <=> b[0]}

inputs.each do |a, b|
    count += b
    if count >= k
        ans = a
        break
    end
end

puts ans