x, n = gets.chomp.split(" ").map(&:to_i)
nums = gets.chomp.split(" ").map(&:to_i).sort

if n == 0 then
    puts x
    exit
end

plus_queue = [x]
minus_queue = [x]
ans = -1

while true do
    minus = minus_queue.shift
    plus = plus_queue.shift
    unless nums.include?(minus) then
        ans = minus
        break
    end
    unless nums.include?(plus) then
        ans = plus
        break
    end
    plus_queue << plus + 1
    minus_queue << minus - 1
end

puts ans