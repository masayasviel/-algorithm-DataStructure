n, x = gets.chomp.split(" ").map(&:to_i)

(n+1).times do |y|
    (n+1).times do |i|
        h = n-y-i
        if y * 10000 + i * 5000 + h * 1000 == x && h >= 0
            puts "#{y} #{i} #{h}"
            exit
        end
    end
end

puts "-1 -1 -1"