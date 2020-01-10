n = gets.chomp.to_i
isOverlap = Hash.new(0)
previous = gets.chomp
isOverlap[previous] += 1
isOk = true
(n-1).times do
    current = gets.chomp
    if isOverlap.include?(current) then
        isOk = false
    elsif previous[-1] != current[0] then
        isOk = false
    end
    isOverlap[current] += 1
    previous = current
end
puts isOk ? "Yes" : "No"