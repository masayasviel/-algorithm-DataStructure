n = gets.chomp.to_i
f = []
_p = []
ans = -(1 << 40)
n.times do |i|
    f << gets.chomp.split(" ").map(&:to_i)
end
n.times do |i|
    _p << gets.chomp.split(" ").map(&:to_i)
end
 
all_zero = true
[0, 1].repeated_permutation(10).each do |bits|
    if all_zero then
        all_zero = false
        next
    end
    sum = 0
    n.times do |i|
        count = 0
        bits.each_with_index do |bit, j|
            count += 1 if bit == 1 && f[i][j] == 1
        end
        sum += _p[i][count]
    end
    ans = ans < sum ? sum : ans
end
 
puts ans