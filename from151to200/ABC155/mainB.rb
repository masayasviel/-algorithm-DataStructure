gets
a = gets.chomp.split(" ").map(&:to_i)
ans = true

a.each do |i|
    if i%2==0
        if i%3!=0
            if i%5!=0
                ans = false
            end
        end
    end
end

puts ans ? "APPROVED" : "DENIED"