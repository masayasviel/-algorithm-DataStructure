n, m, q = gets.chomp.split(" ").map(&:to_i)
input = []
ans = []
q.times do
    input << gets.chomp.split(" ").map(&:to_i)
end

[*1..m].repeated_combination(n) do |arr|
    sum = 0
    input.each do |a, b, c, d|
        if arr[b-1] - arr[a-1] == c then
            sum += d
        end
    end
    ans << sum
end

puts ans.max