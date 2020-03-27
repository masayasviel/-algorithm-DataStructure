n, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
ans = 0
right = 0
sum = 0

n.times do |left|
    while sum < k && right < n
        sum += a[right]
        right += 1
    end
    break if sum < k
    ans += n-right+1
    sum -= a[left]
end

puts ans