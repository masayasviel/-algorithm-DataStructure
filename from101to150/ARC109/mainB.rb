n = gets.chomp.to_i
left = -1
right = n+1

while (right-left).abs > 1 do
    mid = (right+left) / 2
    sigma = (1+mid) * mid / 2
    if sigma > n+1 then
        right = mid
    else
        left = mid
    end
end

puts n-left+1