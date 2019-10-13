n, k = gets.chomp.split(" ").map(&:to_i)
w = gets.chomp.split(" ").map(&:to_i) # 入力の都合で`\\n`区切りから半角区切りに変更

def check(q, n, k, w)
    i = 0
    (0...k).each do |j|
        s = 0
        while s + w[i] <= q do
            s += w[i]
            i += 1
            return n if i == n
        end
    end
    i
end

def solve(n, k, w)
    left = 0
    right = 100000 * 100000
    mid = 0
    while right - left > 1 do
        mid = (left + right) / 2
        v = check(mid, n, k, w)
        if v >= n
            right = mid
        else
            left = mid
        end
    end
    right
end

puts solve(n, k, w)