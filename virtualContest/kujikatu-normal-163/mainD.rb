# https://atcoder.jp/contests/agc034/tasks/agc034_b

s = gets.chomp.split("")
n = s.size
abc = "ABC"
replace_str  = ["B", "C", "A"]
ans = 0
renzoku_A = 0
i = 0

while n-2 > i do
    tmp = s[i] + s[i+1] + s[i+2]
    if tmp == abc then
        ans += renzoku_A + 1
        s[i] = replace_str[0]
        s[i+1] = replace_str[1]
        s[i+2] = replace_str[2]
        i += 2
    else
        if s[i] == "A" then
            renzoku_A += 1
        else
            renzoku_A = 0
        end
        i += 1
    end
end

puts ans