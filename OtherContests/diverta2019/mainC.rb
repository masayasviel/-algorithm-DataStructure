n = gets.chomp.to_i
tale_a = 0
head_b = 0
tale_a_and_head_b = 0
ans = 0
n.times do
    s = gets.chomp
    ans += s.scan("AB").length
    if s[-1] == "A" && s[0] == "B"
        tale_a_and_head_b += 1
    elsif s[-1] == "A"
        tale_a += 1
    elsif s[0] == "B"
        head_b += 1
    end
end

if tale_a_and_head_b == 0
    puts ans + [tale_a, head_b].min
else
    if tale_a + head_b > 0
        puts ans + tale_a_and_head_b + [tale_a, head_b].min
    else
        puts ans + tale_a_and_head_b - 1
    end
end