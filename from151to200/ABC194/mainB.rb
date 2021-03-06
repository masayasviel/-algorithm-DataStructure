n = gets.chomp.to_i
sums = 1 << 40
arr = []
brr = []

n.times do
    a, b = gets.chomp.split.map(&:to_i)
    arr << a
    brr << b
    sums = a+b if a+b < sums
end

ans = 1 << 40

n.times do |a|
    n.times do |b|
        next if a == b
        tmp = [arr[a], brr[b]].max
        ans = tmp if tmp < ans
    end
end

puts [sums, ans].min