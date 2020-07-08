def binarySearch(arr, key)
    left = -1
    right = arr.size
    while (right-left).abs > 1
        mid = (right+left) / 2
        if arr[mid] > key then
            right = mid
        else
            left = mid
        end
    end
    return left
end

n, m, k = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i)
b = gets.chomp.split(" ").map(&:to_i)
ruiseki_a = [0]
ruiseki_b = [0]
ans = 0
n.times do |i|
    ruiseki_a << a[i] + ruiseki_a[i]
end
m.times do |i|
    ruiseki_b << b[i] + ruiseki_b[i]
end
(n+1).times do |i|
    j = binarySearch(ruiseki_b, k - ruiseki_a[i])
    break if j == -1
    ans = ans < i+j ? i+j : ans
end
puts ans