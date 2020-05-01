s = gets.chomp.split("")
n = s.size
ans = Array.new(n, 0)
count = 0
n.times do |i|
    if s[i] == "R"
        count += 1
    else
        ans[i] += count / 2
        ans[i-1] += count - count/2
        count = 0
    end
end
count = 0
(n-1).downto(0) do |i|
    if s[i] == "L"
        count += 1
    else
        ans[i] += count / 2
        ans[i+1] += count - count/2
        count = 0
    end
end

puts ans.join(" ")