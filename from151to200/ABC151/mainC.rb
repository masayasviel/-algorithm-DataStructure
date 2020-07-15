n, m = gets.chomp.split.map(&:to_i)
isac = Array.new(n, false)
count_wa = Array.new(n, 0)
m.times do
    question, result = gets.chomp.split
    question = question.to_i - 1
    if result == "AC" then
        isac[question] = true
    else
        count_wa[question] += 1 unless isac[question]
    end
end
ans = [0, 0] # AC, WA

n.times do |i|
    if isac[i] then
        ans[0] += 1
        ans[1] += count_wa[i]
    end
end

puts ans.join(" ")