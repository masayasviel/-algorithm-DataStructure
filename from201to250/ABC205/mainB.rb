N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i).sort
ans = true

N.times do |i|
    unless A[i] == i+1 then
        ans = false
    end
end

puts ans ? "Yes" : "No"