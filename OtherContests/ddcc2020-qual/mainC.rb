def print_ans(ans)
    ans.each do |arr|
        puts arr.join(" ")
    end
end

H, W, K = gets.chomp.split.map(&:to_i)
cake = []
H.times do
    cake << gets.chomp.split("")
end
ans = Array.new(H).map{Array.new(W, 0)}
num = 1

# →
H.times do |h|
    tmp = 0
    W.times do |w|
        if cake[h][w] == "#" then
            tmp = num
            num += 1
        end
        ans[h][w] = tmp
    end
end

# ←
H.times do |h|
    (W-2).downto(0) do |w|
        ans[h][w] = ans[h][w+1] if ans[h][w] == 0
    end
end

# ↓
(1...H).each do |h|
    W.times do |w|
        ans[h][w] = ans[h-1][w] if ans[h][w] == 0
    end
end

# ↑
(H-2).downto(0) do |h|
    W.times do |w|
        ans[h][w] = ans[h+1][w] if ans[h][w] == 0
    end
end

print_ans(ans)