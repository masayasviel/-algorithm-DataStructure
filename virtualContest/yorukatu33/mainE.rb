# https://atcoder.jp/contests/abc106/tasks/abc106_d

n, m, question_num = gets.chomp.split(" ").map(&:to_i)
train_range = Array.new(n+1).map{Array.new(n+1, 0)}

m.times do
    l, r = gets.chomp.split(" ").map(&:to_i)
    train_range[r][l] += 1
end

1.upto(n) do |i|
    1.upto(n) do |j|
        train_range[i][j] += train_range[i][j-1]
    end
end

1.upto(n) do |i|
    1.upto(n) do |j|
        train_range[i][j] += train_range[i-1][j]
    end
end

# train_range.each do |i|
#     puts i.join(" ")
# end

question_num.times do
    a, b = gets.chomp.split(" ").map(&:to_i)
    puts train_range[b][b] + train_range[a-1][a-1] - train_range[a-1][b] - train_range[b][a-1]
end