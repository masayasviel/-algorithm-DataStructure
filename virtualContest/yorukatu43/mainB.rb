# https://atcoder.jp/contests/abc136/tasks/abc136_c

n = gets.chomp.to_i
h = gets.chomp.split(" ").map(&:to_i).reverse
prev = h[0]
ans = true

n.times do |i|
    h[i] -= 1 if prev < h[i]
    if prev < h[i] then
        ans = false
        break
    end
    prev = h[i]
end

puts ans ? "Yes" : "No"