red, green, blue, n = gets.chomp.split(" ").map(&:to_i)
ans = 0

(n+1).times do |r|
    (n+1).times do |g|
        rg = r*red + g*green
        ans += 1 if n >= rg && (n-rg) % blue == 0
    end
end

puts ans