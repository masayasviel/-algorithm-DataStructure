n, capacity = gets.chomp.split(" ").map(&:to_i)

ans = Array.new(n+1).map{Array.new(capacity+1, 0)}

1.upto(n) do |i|
    value, weight = gets.chomp.split(" ").map(&:to_i)
    1.upto(capacity) do |j|
        if weight <= j then
            if value + ans[i-1][j - weight] > ans[i-1][j] then
                ans[i][j] = value + ans[i-1][j - weight]
            else
                ans[i][j] = ans[i-1][j]
            end
        end
    end
end

puts ans[n][capacity]