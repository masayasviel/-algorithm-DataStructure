H, W = gets.chomp.split.map(&:to_i)
S = []
H.times do
    S << gets.chomp.split("")
end

ans = 0

H.times do |h|
    W.times do |w|
        ans += 1 if w+1 < W && S[h][w] == "." && S[h][w+1] == "."
        ans += 1 if h+1 < H && S[h][w] == "." && S[h+1][w] == "."
    end
end

puts ans