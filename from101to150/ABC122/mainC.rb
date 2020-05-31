n, q = gets.chomp.split(" ").map(&:to_i)
s = gets.chomp
ac_count = [0, 0]

(1...n).each do |i|
    if s[i-1] + s[i] == "AC" then
        ac_count << ac_count[i] + 1
    else
        ac_count << ac_count[i]
    end
end

q.times do
    left, right = gets.chomp.split(" ").map(&:to_i)
    puts ac_count[right] - ac_count[left]
end