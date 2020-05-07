k = gets.chomp.to_i
ans = 0
1.upto(k) do |a|
    1.upto(k) do |b|
        tmp = a.gcd(b)
        1.upto(k) do |c|
            ans += tmp.gcd(c)
        end
    end
end

puts ans