n, m = gets.chomp.split(" ").map(&:to_i)
num = Array.new(n, nil)
m.times do
    s, c = gets.chomp.split(" ").map(&:to_i)
    if n != 1 && s == 1 && c == 0
        puts -1
        exit
    end
    if num[s-1] == nil
        num[s-1] = c
    elsif num[s-1] != c
        puts -1
        exit
    end
end
 
n.times do |i|
    num[i] = 0 if num[i] == nil
end

num[0] = 1 if num[0] == 0 && n != 1
 
puts num.join("").to_i