n = gets.chomp.to_i
arr = Array.new(5, 0) # m, a, r, c, h

n.times do
    s = gets.chomp
    case s[0]
    when "M" then
        arr[0] += 1
    when "A" then
        arr[1] += 1
    when "R" then
        arr[2] += 1
    when "C" then
        arr[3] += 1
    when "H" then
        arr[4] += 1
    end
end

res = 5 - arr.count(0)
ans = 0

if res >= 3
    filterArr = arr.select{|num| num != 0}
    com = filterArr.combination(3).to_a
    com.each do |c|
        ans += c.inject(:*)
    end
end

puts ans