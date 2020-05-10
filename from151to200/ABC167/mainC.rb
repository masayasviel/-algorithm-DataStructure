n, m, x = gets.chomp.split(" ").map(&:to_i)

cost = []
a = []
ans = 0
isOk = Array.new(m, 0)

n.times do
    input = gets.chomp.split(" ").map(&:to_i)
    cost << input.shift
    a << input
end

a.each do |arr|
    m.times do |i|
        isOk[i] += arr[i]
    end
end

if isOk.any?{|v| v < x}
    puts -1
    exit
end

ans = 1 << 40

[0, 1].repeated_permutation(n) do |bits|
    isOk = Array.new(m, 0)
    res = 0
    n.times do |i|
        if bits[i] == 1 then
            m.times do |j|
                isOk[j] += a[i][j]
            end
            res += cost[i]
        end
    end
    ans = [ans, res].min if isOk.all?{|v| v >= x}
end

puts ans