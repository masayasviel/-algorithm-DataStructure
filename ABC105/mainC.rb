n = gets.chomp.to_i
ans = []
if n == 0 then
    puts 0
    exit
end
until n == 0 do
    ans << n%2
    n = -(n >> 1)
end
puts ans.reverse.join("")