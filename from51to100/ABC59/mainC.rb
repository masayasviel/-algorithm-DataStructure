n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans_a = 0
ans_b = 0
sum = 0

n.times do |i|
    sum += a[i]
    if i % 2 == 0 then
        if sum <= 0
            ans_a += sum.abs + 1
            sum += sum.abs + 1
        end
    else
        if sum >= 0 then
            ans_a += sum.abs + 1
            sum -= sum.abs + 1
        end
    end
end

sum = 0

n.times do |i|
    sum += a[i]
    if i % 2 == 1 then
        if sum <= 0
            ans_b += sum.abs + 1
            sum += sum.abs + 1
        end
    else
        if sum >= 0 then
            ans_b += sum.abs + 1
            sum -= sum.abs + 1
        end
    end
end

puts [ans_a, ans_b].min