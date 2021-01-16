n = gets.chomp.to_i
h = Hash.new(0)
ans = "satisfiable"
n.times do
    s = gets.chomp
    if s[0] == "!" then
        rm_ex = s[1...s.size]
        ans = rm_ex if h.has_key?(rm_ex)
    else
        ad_ex = "!" + s
        ans = s if h.has_key?(ad_ex)
    end
    h[s] += 1
end

puts ans