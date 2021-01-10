N, fix_rate = gets.chomp.split.map(&:to_i)
event = []
N.times do
    a, b, c = gets.chomp.split.map(&:to_i)
    event << [a-1, c]
    event << [b, -c]
end
event.sort!{|a, b| a[0] <=> b[0]}

ans = 0
fee = 0
current = 0

event.each do |t, c|
    if current != t then
        ans += (fix_rate > fee ? fee : fix_rate) * (t-current)
        current = t
    end
    fee += c
end

puts ans