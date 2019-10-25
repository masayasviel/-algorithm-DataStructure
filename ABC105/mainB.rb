n = gets.chomp.to_i
result = nil
0.step(n, 4) do |a|
    0.step(n, 7) do |b|
        if a+b==n then
            result = true
            break
        elsif a+b > n then
            result = false
        end
    end
    break if result==true
end
puts result ? "Yes" : "No"