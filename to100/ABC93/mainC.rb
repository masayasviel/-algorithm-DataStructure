num = gets.chomp.split(" ").map(&:to_i)
count = 0
num.sort!
while !num.all? {|i| num[2] == i}
    num.sort!
    if num[2] - num[0] >= 2
        num[0] += 2
    elsif num[2] -num[1] >= 2
        num[1] += 2
    else
        num[0] += 1
        num[1] += 1
    end
    count += 1
end
puts count