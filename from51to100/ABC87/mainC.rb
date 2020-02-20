n = gets.chomp.to_i

if n==1
    a1 = gets.chomp.to_i
    a2 = gets.chomp.to_i
    puts a1+a2
    exit
end

a1 = gets.chomp.split(" ").map(&:to_i)
a2 = gets.chomp.split(" ").map(&:to_i)

arr1 =  Array.new(n, 0)
arr2 = Array.new(n, 0)
ans = 0
arr1[n-1] = a1.inject(:+)
arr2[0] = a2.inject(:+)

2.upto(n) do |i|
    arr1[n-i] = arr1[n-i+1] - a1[n-i+1]
    arr2[i-1] = arr2[i-2] - a2[i-2]
end

(n-1).times do |j|
    ans = [ans, arr1[j]+arr2[j]].max
end

puts ans