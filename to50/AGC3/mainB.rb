n = gets.chomp.to_i
ans = 0
amari = false
n.times do
    a = gets.chomp.to_i
    ans += (a + (amari ? 1 : 0)) / 2
    if amari && a > 0 then
        amari = ((a-1) & 1) == 1
    else
        amari = (a & 1) == 1
    end
end
puts ans