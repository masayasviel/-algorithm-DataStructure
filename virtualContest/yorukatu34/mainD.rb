# https://atcoder.jp/contests/abc110/tasks/abc110_c

s = gets.chomp.split("")
t = gets.chomp.split("")
n = s.size
s_hash = {}
t_hash = {}
ans = true

n.times do |i|
    if s_hash.has_key?(s[i]) then
        if s_hash[s[i]] != t[i] then
            ans = false
            break
        end
    end
    if t_hash.has_key?(t[i]) then
        if t_hash[t[i]] != s[i] then
            ans = false
            break
        end
    end
    s_hash[s[i]] = t[i]
    t_hash[t[i]] = s[i]
end

puts ans ? "Yes" : "No"