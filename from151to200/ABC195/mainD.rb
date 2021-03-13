N, M, Q = gets.chomp.split.map(&:to_i)
baggagies = []
N.times do
    baggagies << gets.chomp.split.map(&:to_i)
end
baggagies.sort_by!{|it| it[1]}.reverse!
x = gets.chomp.split.map(&:to_i)

ans = []

Q.times do
    res = 0
    left, right = gets.chomp.split.map{|it| it.to_i - 1}
    flags = Array.new(M, false)
    baggagies.each do |weight, value|
        min_idx = -1
        min_value = 1 << 40
        M.times do |i|
            next if flags[i]
            next if left <= i && i <= right
            if x[i] >= weight && x[i] < min_value then
                min_value = x[i]
                min_idx = i
            end
        end
        if min_idx != -1 then
            flags[min_idx] = true
            res += value
        end
    end
    ans << res
end

puts ans.join("\n")