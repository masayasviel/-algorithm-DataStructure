n = gets.chomp.to_i
inputs = []
n.times do
    inputs << gets.chomp.split("")
end

res = []
(n/2).times do |i|
    tmp = inputs[i] & inputs[n-1-i]
    if tmp.empty? then
        puts -1
        exit
    end
    res << tmp[0]
end

head = res.join("")
tail = res.reverse.join("")


if n & 1 == 1 then
    puts head + inputs[n/2][0] + tail
else
    puts head + tail
end