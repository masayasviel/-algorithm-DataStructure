N = gets.chomp.to_i
_p = gets.chomp.split.map(&:to_i)
res = Array.new(N)
_p.each_with_index do |elm, idx|
    res[elm-1] = idx+1
end

puts res.join(' ')
