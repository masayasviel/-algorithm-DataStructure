n, m = gets.chomp.split(" ").map(&:to_i)
a = gets.chomp.split(" ").map(&:to_i).sort
arr = []
m.times do
    arr << gets.chomp.split(" ").map(&:to_i)
end
arr = arr.sort_by(&:last).reverse
x = 0
a.each_with_index do |e, i|
    if e <= arr[x][1]
        a[i] = arr[x][1]
        arr[x][0] -= 1
        x += 1 if arr[x][0] == 0
        break if x >= m
    end
end
puts a.inject(:+)