n, k, m = gets.chomp.split.map(&:to_i)
a = gets.chomp.split.map(&:to_i).sum
ans = -1

(k+1).times do |i|
    if (a+i) / n >= m then
        ans = i
        break
    end
end

puts ans