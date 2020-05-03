def odd_solve(x)
    (x + 1) / 2 % 2
end

def solve(x)
    if x & 1 == 1
        odd_solve(x)
    else
        odd_solve(x) ^ x
    end
end

a, b = gets.chomp.split(" ").map(&:to_i)
puts solve(b) ^ solve(a-1)