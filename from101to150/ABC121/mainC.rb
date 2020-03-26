n, m = gets.chomp.split(" ").map(&:to_i)
inputs = []
ans = 0
n.times do
    inputs << gets.chomp.split(" ").map(&:to_i)
end
inputs.sort!{|a, b| a[0] <=> b[0]}
quantity = 0
inputs.each do |a, b|
    if m <= quantity + b
        ans += a * (m-quantity)
        break
    else
        ans += a*b
    end
    quantity += b
end
puts ans