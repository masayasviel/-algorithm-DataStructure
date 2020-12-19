N, M = gets.chomp.split.map(&:to_i)
if M == 0 then
    puts 1
    exit
end
a = gets.chomp.split.map(&:to_i).sort
tmp = a[0]-1
k = tmp != 0 ? tmp : 1
sa = [tmp]
(M-1).times do |i|
    tmp = a[i+1] - a[i] - 1
    k = [tmp, k].min if tmp != 0
    sa << tmp
end
tmp = N - a[-1]
k = [tmp, k].min if tmp != 0
sa << tmp
ans = 0

sa.each do |i|
    ans += i / k
    ans += 1 if i % k != 0
end

puts ans