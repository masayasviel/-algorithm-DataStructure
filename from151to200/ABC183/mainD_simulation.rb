n, w = gets.chomp.split.map(&:to_i)
event = []  # 時間, 量
ans = true
n.times do
    si, ti, pi = gets.chomp.split.map(&:to_i)
    event << [si, pi]
    event << [ti, -pi]
end

event.sort!{|a, b| (a[0] <=> b[0]).nonzero? || (a[1] <=> b[1])}

crr = 0

event.each do |t, _p|
    crr += _p
    if crr > w then
        ans = false
        break
    end
end

puts ans ? "Yes" : "No"
