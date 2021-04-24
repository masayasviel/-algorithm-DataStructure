N = gets.chomp.to_i
S = gets.chomp
Q = gets.chomp.to_i

ans = S.chars
ts_flag = false

Q.times do
    t, a, b = gets.chomp.split.map(&:to_i)
    if t == 1 then
        if ts_flag then
            if a > N && b > N then
                tmp = ans[a-N-1]
                ans[a-N-1] = ans[b-N-1]
                ans[b-N-1] = tmp
            elsif b > N then
                tmp = ans[a+N-1]
                ans[a+N-1] = ans[b-N-1]
                ans[b-N-1] = tmp
            else
                tmp = ans[a+N-1]
                ans[a+N-1] = ans[b+N-1]
                ans[b+N-1] = tmp
            end
        else
            tmp = ans[a-1]
            ans[a-1] = ans[b-1]
            ans[b-1] = tmp
        end
    else
        ts_flag = !ts_flag
    end
end

if ts_flag then
    first = ans[0...N].join("")
    second = ans[N...(2*N)].join("")
    puts second + first
else
    puts ans.join("")
end