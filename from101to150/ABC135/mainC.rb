n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
ans = 0
n.times do |i|
    if a[i] >= b[i]
        ans += b[i]
    else
        b[i] -= a[i]
        ans += a[i]
        if b[i] >= a[i+1]
            ans += a[i+1]
            a[i+1] = 0
        else
            a[i+1] -= b[i]
            ans += b[i]
        end
    end
end

puts ans