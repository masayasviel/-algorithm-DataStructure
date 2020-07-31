def binary_search(arr, key, option)
    left = -1
    right = arr.size
    while (right - left).abs > 1 do
        mid = (right + left) / 2
        if arr[mid] >= key then
            right = mid
        else
            left = mid
        end
    end
    if option === "min" then
        return right
    elsif option === "max" then
        return left
    end
end

n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
dp = [0]
n.times do |i|
    dp << a[i] + dp[i]
end
rod_length = dp[-1]
tmp_1 = dp[binary_search(dp, rod_length/2, "min")]
tmp_2 = dp[binary_search(dp, rod_length/2, "max")]
mid = (tmp_1 - rod_length/2).abs > (tmp_2 - rod_length/2).abs ? tmp_2 : tmp_1

puts (rod_length - mid*2).abs