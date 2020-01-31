def binarySearch(arr, key)
    left = -1
    right = arr.size
    while (right - left).abs > 1
        mid = ((right + left) / 2) | 0
        if arr[mid] >= key then
            right = mid
        else
            left = mid
        end
    end
    return right
end

def main
    n = gets.chomp.to_i
    ans = []
    ans << gets.chomp.to_i

    (n-1).times do |i|
        input = gets.chomp.to_i
        if input > ans[-1] then
            ans << input
        else
            index = binarySearch(ans, input)
            ans[index] = input
        end
    end
    ans.size
end

puts main