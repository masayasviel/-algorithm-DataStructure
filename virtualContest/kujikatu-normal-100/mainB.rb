# https://atcoder.jp/contests/abc075/tasks/abc075_b

H, W = gets.chomp.split.map(&:to_i)
s = []
ans = Array.new(H).map{Array.new(W)}
H.times do
    s << gets.chomp.split("")
end

H.times do |h|
    W.times do |w|
        if s[h][w] == "#" then
            ans[h][w] = "#"
            next
        else 
            res = 0
            [-1, 0, 1].each do |i|
               [-1, 0, 1].each do |j|
                   next if h+i < 0 || w+j < 0 || h+i >= H || w+j >= W
                   res += 1 if s[h+i][w+j] == "#"
               end
           end
           ans[h][w] = res
        end
    end
end

ans.each do |row|
    puts row.join("")
end