N = gets.chomp.to_i
# t =
#   1: []
#   2: [)
#   3: (]
#   4: ()
inputs = []
N.times do
    t, l, r = gets.chomp.split.map(&:to_f)
    case t
    when 2 then
        r -= 0.1
    when 3 then
        l += 0.1
    when 4 then
        r -= 0.1
        l += 0.1
    end
    inputs << [l, r]
end

ans = 0
(N-1).times do |i|
    il, ir = inputs[i]
    ((i+1)...N).each do |j|
        jl, jr = inputs[j]
        if (jl <= il && il <= jr) || (il <= jl && jl <= ir) then
            ans += 1
        end
    end
end

puts ans