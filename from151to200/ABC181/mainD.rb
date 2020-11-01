s = gets.chomp.split("").map(&:to_i)

if s.size == 1 then
    puts s[0].to_i % 8 == 0 ? "Yes" : "No"
    exit
elsif s.size == 2 then
    tmp1 = s.join("").to_i % 8 == 0
    tmp2 = s.reverse.join("").to_i % 8 == 0
    puts tmp1 || tmp2 ? "Yes" : "No"
    exit
end

count_number = Array.new(10, 0)
ans = false
s.each do |i|
    count_number[i] += 1
end
comb_number = []
10.times do |i|
    num = count_number[i]
    ([num, 3].min).times do
        comb_number << i
    end
end

comb_number.combination(3).each do |comb_arr|
    comb_arr.permutation(3).each do |per_arr|
        tmp = per_arr.join("").to_i
        if tmp % 8 == 0 then
            ans = true
            break
        end
    end
    break if ans
end

puts ans ? "Yes" : "No"