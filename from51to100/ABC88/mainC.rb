c = []
3.times do
    c << gets.chomp.split(" ").map(&:to_i)
end
a = [0, 0, 0]
b = [0, 0, 0]

def check(a, b, c)
    3.times do |i|
        3.times do |j|
            if c[i][j] != a[j] + b[i]
                return
            end
        end
    end
    puts "Yes"
    exit
end

0.upto(100) do |i| 
    0.upto(100) do |j|
        if i+j == c[0][0]
            a = j, c[0][1]-i, c[0][2]-i
            if c[1][0]-j >= 0 && c[2][0]-j >= 0
                b = i, c[1][0]-j, c[2][0]-j
                check(a, b, c)
            end
        end
    end
end

puts "No"