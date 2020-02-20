n = gets.chomp.split("").map(&:to_i).reverse
ans = 0
n.each_with_index do |e, i|
    if i % 2 == 0
        ans += e
    else
        ans -= e
    end
end
puts ans%11