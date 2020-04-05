k = gets.chomp.to_i
queue = [*1..9]
ans = -1
k.times do
    ans = queue.shift
    tmp = ans % 10
    queue << ans * 10 + tmp - 1 if tmp != 0
    queue << ans * 10 + tmp
    queue << ans * 10 + tmp + 1 if tmp != 9
end
puts ans