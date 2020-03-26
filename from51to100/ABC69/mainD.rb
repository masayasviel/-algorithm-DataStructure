h, w = gets.chomp.split(" ").map(&:to_i)
n = gets.chomp.to_i
a = gets.chomp.split(" ").map(&:to_i)
ans = Array.new(h).map{Array.new(w, 0)}
pointer = 0
count = a[pointer]
h.times do |row|
    w.times do |column|
        ans[row][column] = pointer + 1
        count -= 1
        if count <= 0 then
            pointer += 1
            count = a[pointer]
        end
    end
    if row % 2 != 0 then
        ans[row].reverse!
    end
end

ans.each do |res|
    puts res.join(" ")
end