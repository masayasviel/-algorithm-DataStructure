# https://atcoder.jp/contests/abc121/tasks/abc121_d

def oddsolve(x)
    (x + 1) / 2 % 2
end

def solve(x)
    if x & 1 == 1 then
        oddsolve(x)
    else
        oddsolve(x+1) ^ (x+1)
    end
end

a, b = gets.chomp.split.map(&:to_i)
puts solve(b) ^ solve(a-1)