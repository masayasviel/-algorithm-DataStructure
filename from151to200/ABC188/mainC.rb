n = gets.chomp.to_i
a = gets.chomp.split.map(&:to_i)
b = [] # [value, index]
x = 2.pow(n)
x.times do |i|
    b << [a[i], i+1]
end

while x > 2 do
    tmp = []
    (x/2).times do |i|
        if b[2*i][0] > b[2*i+1][0] then
            tmp << [b[2*i][0], b[2*i][1]]
        else
            tmp << [b[2*i+1][0], b[2*i+1][1]]
        end
    end
    b = tmp
    x /= 2
end

puts b[0][0] < b[1][0] ? b[0][1] : b[1][1]