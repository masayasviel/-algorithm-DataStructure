# https://atcoder.jp/contests/arc097/tasks/arc097_a

s = gets.chomp
k = gets.chomp.to_i
n = s.size
arr = []

s.split("").each do |e|
    arr << e
end

if arr.size == 1 then
    puts arr[0]
    exit
end

(n-1).times do |head|
    1.upto(k) do |tail|
        arr << s[head..(head + tail)]
    end
end
arr = arr.uniq.sort
puts arr[k-1]