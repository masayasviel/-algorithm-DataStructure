# https://atcoder.jp/contests/abc045/tasks/arc061_a

s = gets.chomp
n = s.size
ans = 0
s = s.split("")

[0, 1].repeated_permutation(n-1).each do |bits|
    formula = []
    n.times do |i|
        formula << s[i]
        formula << "+" if bits[i] == 1
    end
    ans += eval(formula.join(""))
end

puts ans