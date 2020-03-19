n = gets.chomp.to_i
per = gets.chomp.split(" ").map(&:to_i)
num = [*1..n]
differ = Array.new(n, false)
ans = 0
n.times do |i|
    differ[i] = true if num[i] == per[i]
end

n.times do |i|
    if differ[i]
        differ[i] = false
        differ[i+1] = false if differ[i+1]
        ans += 1
    end
end
puts ans