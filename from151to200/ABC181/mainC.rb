n = gets.chomp.to_i
input = []
ans = false
row = Hash.new(0)
column = Hash.new(0)
n.times do |i|
    x, y = gets.chomp.split.map(&:to_f)
    row[x] += 1
    column[y] += 1
    input << [x, y, i]
end

row.each do |key, value|
    if value >= 3 then
        ans = true
        break
    end
end
column.each do |key, value|
    if value >= 3 then
        ans = true
        break
    end
end
if ans then
    puts "Yes"
    exit
end

input.combination(2).each do |comb|
    a, b = comb
    ax, ay, ai = a
    bx, by, bi = b
    input.each do |x, y, i|
        next if i == ai || i == bi
        if y == (by-ay) * (x - ax) / (bx-ax) + ay
            ans = true
            break
        end
    end
    break if ans
end

puts ans ? "Yes" : "No"