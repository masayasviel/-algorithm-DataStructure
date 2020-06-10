n, m, q = gets.chomp.split(" ").map(&:to_i)
solvedQuestion = Array.new(n).map{Array.new}
questionsScore = Array.new(m, n)

ans = []

q.times do
    s = gets.chomp
    if s[0] == "1"
        _, a = s.split(" ").map(&:to_i)
        res = 0
        if solvedQuestion[a-1].empty? then
            ans << res
        else
            solvedQuestion[a-1].each do |e|
                res += questionsScore[e]
            end
            ans << res
        end
    else
        _, a, b = s.split(" ").map(&:to_i)
        solvedQuestion[a-1] << b-1
        questionsScore[b-1] -= 1
    end
end

puts ans.join("\n")