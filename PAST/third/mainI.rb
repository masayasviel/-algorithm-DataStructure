n = gets.chomp.to_i
q = gets.chomp.to_i
is_transpose = false
row = Array.new(n)
column = Array.new(n)
ans = []
n.times do |i|
    row[i] = n*i
    column[i] = i
end

q.times do
    query = gets.chomp
    case query[0]
    when "1"
        _, a, b = query.split(" ").map(&:to_i)
        if is_transpose then
            column[a-1], column[b-1] = column[b-1], column[a-1]
        else
            row[a-1], row[b-1] = row[b-1], row[a-1]
        end
    when "2"
        _, a, b = query.split(" ").map(&:to_i)
        if is_transpose then
            row[a-1], row[b-1] = row[b-1], row[a-1]
        else
            column[a-1], column[b-1] = column[b-1], column[a-1]
        end
    when "3"
        is_transpose = !(is_transpose)
    when "4"
        _, a, b = query.split(" ").map(&:to_i)
        if is_transpose then
            ans << column[a-1] + row[b-1]
        else
            ans << row[a-1] + column[b-1]
        end
    end
end

puts ans.join("\n")