n = gets.chomp.to_i
rod = gets.chomp.split(" ").map(&:to_i).sort
ans = 0
n.times do |a|
    (a+1).upto(n-1) do |b|
        tmp = rod[a] + rod[b]
        c = rod.bsearch_index{|x| x >= tmp} || n
        ans += [c-(b+1), 0].max
    end
end

puts ans