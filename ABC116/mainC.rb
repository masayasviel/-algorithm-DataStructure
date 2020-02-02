n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i)

ans = 0

while h.any?{|e| e != 0}
    flag = true
    n.times do |i|
        if h[i] == 0
            if flag
                next
            else
                break
            end
        else
            flag = false
            h[i] -= 1
        end
    end
    ans += 1
end

puts ans