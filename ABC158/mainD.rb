s = gets.chomp.split("")
q = gets.chomp.to_i
head = []
tail = []
rev = 0
query = []

q.times do
    query << gets.chomp
end

query.each do |input|
    if input == "1"
        rev += 1
    else
        n, f, c = input.split(" ")
        if f == "1"
            if rev % 2 == 0
                head.unshift(c)
            else
                tail << c
            end
        else
            if rev % 2 == 0
                tail << c
            else
                head.unshift(c)
            end
        end
    end
end

if rev % 2 == 0
    puts (head + s + tail).join("")
else
    puts (head + s + tail).reverse.join("")
end