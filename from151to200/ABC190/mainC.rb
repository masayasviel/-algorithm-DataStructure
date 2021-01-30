n, m = gets.chomp.split.map(&:to_i)
terms = []
m.times do
    terms << gets.chomp.split.map{|it| it.to_i - 1}
end
k = gets.chomp.to_i
which_ball = []
k.times do
    which_ball << gets.chomp.split.map{|it| it.to_i - 1}
end

ans = -1

[0, 1].repeated_permutation(k) do |bits|
    dish = Array.new(n, false)
    res = 0
    k.times do |i|
        dish[which_ball[i][bits[i]]] = true
    end
    terms.each do |a, b|
        res += 1 if dish[a] && dish[b]
    end
    ans = res if res > ans
end

puts ans