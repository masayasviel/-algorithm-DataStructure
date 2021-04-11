N = gets.chomp.to_i
A = gets.chomp.split.map(&:to_i)

if N == 1 then
    puts A[0]
    exit
end

ans = 1 << 40

[0, 1].repeated_permutation(N-1) do |bits|
    bits << 1
    or_sum = 0
    or_arr = []
    bits.each_with_index do |b, i|
        or_sum |= A[i]
        if b == 1 then
            or_arr << or_sum
            or_sum = 0
        end
    end
    xors = or_arr.inject{|res, item| res ^ item}
    ans = xors if xors < ans
end

puts ans